Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08827219F5
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705504097; cv=none; b=sFsm+Jcd03/wtXIm8NUj3fxY8GJo20AhVVSCFMJhmgm8PvUdtuhWQ1BhklsKbETnxhiSKrNv1NQp3BOZH4MZSl8QAUrJky7O7Ii5b02WGjiZdpyUSf/qt5sM+3Pj5ufVic4FXK1/W8TgZOr1PMt9cyf3sZLIKPqs5DvIh/zsPCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705504097; c=relaxed/simple;
	bh=N1gJgBs9iMJlfbOgH27hGqIRTtGaMVSCGZL3Q+WJsP8=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Lm3BZkvWeMezdOaeWOapGk3ngcnzNCuYi5I+qoKCew75WiE5m+6iW380UBwkPnpaxJFebKNkwguUChBaUJNusQR8Hm4jh2YszpGZf/Maah88fZ3lwL/P3RDK+x7vO0+4e6jeclat3ITmzd4Gsg34mM+Gw7U6UO2T91N9L2cIKOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cN5cHeHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cN5cHeHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799D2C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705504096;
	bh=N1gJgBs9iMJlfbOgH27hGqIRTtGaMVSCGZL3Q+WJsP8=;
	h=To:Subject:From:Date:From;
	b=cN5cHeHgHFPyESHVmvho47f3CT0Sq8Ut2YymIy50uF5WEAGMSFoaFzvO+0WyWRvfz
	 wItgviMwORLD2YJyY6m9vH8dRaZhbvq6So86F+ksmxkisn76zKqai+BKHa7uJTZkCs
	 kx7pp3bSalbq1XdGRoAWANxybDch5WeOceT+T1udn285kk81OOtwH8NECEH8RqRH/9
	 kVNdyf1/ZJf7u0FEr37U9xy5d74ss7koIoK/9BGIoeVtH/kbPaTOfU5VFAUO/R/+EW
	 vuz5lTZXhDBCKkJmqZ4CzkzykMKYdMKNWX2tOf9JOUVY4I0B8XHPSel+1lNp2hVOTg
	 fOTNMPnaOlINw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F95C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550409639.32482.4665429727603045637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5dd25359bc96036bd8177fdccc66961d86ea67d88775b1839fab48d123fbb12
Date: Wed, 17 Jan 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705504096
