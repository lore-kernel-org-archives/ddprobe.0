Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5662C6A3
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719855323; cv=none; b=Dil/odcRnLxaHkjvuuGRAfePUYOv76qc9aDdl2TVATvStwqYtTpQr0zOG/Hk+6CHadu9VD5b1IDfJWZGkOTzP+OYvbX69hYuy/7AXLJCAo5PowRSk5/4DwbYj742e0cmGNjM3qVOsfb2aOhbrTd25NSAvBn+F6JH7CD6zbJAvt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719855323; c=relaxed/simple;
	bh=35KK5shySD6O9QJXb2awK1afzF2on0h6HQ+NG8HUVCs=;
	h=To:Subject:From:Message-Id:Date; b=grv2EXqubXh3aeHDJ1a7+fQi5c6kjeoI6JaUnw3yoJ3t2i7p4pKF+uBZG3xA2JTGaH7Yd6B40VNXjxRBGQoklzGhq7fcaBs+r1hKLZLol5mm99pcYYhvgdoTef5lBICsNqp7GHKKH1jxByx/kzkLk+MQh15rUwQ/BP4fjm58x9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiZ9WNdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiZ9WNdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA131C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719855322;
	bh=35KK5shySD6O9QJXb2awK1afzF2on0h6HQ+NG8HUVCs=;
	h=To:Subject:From:Date:From;
	b=YiZ9WNdmpCPMhkq01rN1Q5Ml2ncj6AU42Fga+p0McjGhrU1cRbmYnbmopaynMg5Ve
	 OvI9x7AA9UgL+G965kixvg4QwnfvtQgU8B9nig+EhszN9K/bsOmtQocy3prxpKENI8
	 J5vl6BQnSJCj6O2prJNhMDKa9zatNMawUxMWdvBvvHGkn0R4x4EItMGJMbaxjqg+rh
	 gc1Cb24RhtP3sKqUNua9ZLCOTw7VnIT9+MFKK4KcurYFK+XcEBLLLdXRhr0B82pFF5
	 5pLGk7nNhctI+/Vvf6m92rp2a48+mvQoSHayKp0HO3eE8gfKqMPyPHSXgctKYT+1TW
	 MyEqqTXz3GHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FE8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985532278.9470.4592592545344289848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b547be4b432de7c9b14c610a7f2488a4aaa1fc66f57196c790948d55601c12
Date: Mon, 01 Jul 2024 17:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719855322
