Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B8F23AB8D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771613094; cv=none; b=CMiCBsIpCP2+exEn5Vqpd/djftlk83V83zEfKfOYyB7/9qdv9va6x7xdpnSSS21YKR7DwjKXeAtPEliivzw+AZSb7wwUv1Vqu4r2UuqmAnBeuliG2QL2suFh46oaNMoUNeOj+DG/WwP+6BLl2Jpgs3mQAeElxftEPYIUi+kzb0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771613094; c=relaxed/simple;
	bh=sVezi0oohTehv1FkZHiqdG7PwWj7qsVaPy822FAeWbE=;
	h=To:Subject:From:Message-Id:Date; b=AwvlvKuK1WjQt3iixfcDu+pZMUgoNX8lC7MEyucuSuVeMP8Ci5By/dy0RIzjmLyaRsZtBrnMIdNAIVgHcCDZWhxHH7KFDv3LZs4CZ11Hi0hQ8Lb7hgF2Ax32PGw/ijZFl+GtLtLHP9rsk/nK1WZhiUSl7hyHeqz/ct5hdaVWQmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvrD/QMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvrD/QMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5458C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771613093;
	bh=sVezi0oohTehv1FkZHiqdG7PwWj7qsVaPy822FAeWbE=;
	h=To:Subject:From:Date:From;
	b=tvrD/QMDY1SIghGdaQrtsIN01iHx00ybr8VefsVbR9Kjzj8rhGT0dbQnSnpUK2ezI
	 KGTDibpriQM5D8GMmS0vKVljGHJVhoiwxsVGyQ27/TGWMT4PhczYzx0/Q7AAMmWZpA
	 zDRvQsWSQNlcGauw2g4TUzQCcv1iMlX32Je0zReOIyeRGz9Im3+OB9ynPf1EQa/Ufe
	 FaCfva688hm7kePnYiHMIlpzZJrgdHET+FQTZjh14bWDU6Eh/qKUb2fKu8WEEZbvGe
	 nWapSH0yM505hP4QKOmrqH5AEx2++ZezRQeGn747AfUC1ZiAc+FH83XkEIjOA1huOL
	 CvO2KL8FHfxYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E3C5AD58
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161309358.20340.15135617747294964447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d137f94d94f3ad9f1464ba7799e7f2449f3f05d4dec1c27b6c0a27bf4c56ae
Date: Fri, 20 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771613093
