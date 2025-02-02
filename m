Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21F025632
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738469754; cv=none; b=G/fvcPGnHBmKRv48k/4Asyd7eaoW6y7zF9ODh8wz4Krkixgv/Bjmds8/kCNkFj9Zp2TDQcZXZJO1a1+zf19TP2tKa3SxozQVaWxfRfu8h7Vi6LDeelSBPr82Aulync15ZzSgsHptG3bnjx+FTff35cxUrCixHzRNHWf0XkP4r8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738469754; c=relaxed/simple;
	bh=xqkRpz4BCJD/CfU4Y3gltpb0H3bggq49bt75wH7ErXw=;
	h=To:Subject:From:Message-Id:Date; b=rSGhr97pDBqIk+IeRXyopww4b9Lh55n+wi6uwO9JwAOD3F2jjYEBRWn496RsOEKvlGwhKY4Xv54+Uleqnuu4qaqijm4y1OEOMhQ3P0dWwAPwUN2tKbUoxUWVFxnPwrgOHBUq9wUwOy3eGfx+hn8YWFZMAJnmBtPVKXlNEqSwf8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJGMdqyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJGMdqyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D262DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738469753;
	bh=xqkRpz4BCJD/CfU4Y3gltpb0H3bggq49bt75wH7ErXw=;
	h=To:Subject:From:Date:From;
	b=gJGMdqyLL1pYPrAmHs39FP2XbHQU3G1NsABE4m0/R+a5Skk7qJaJvGBGYZaq9EQQK
	 uhvaKabffqGPVjgfusjePsPE80ecXZMYOXux77nRyZXJonwSsowqgVHS/KumTCogHs
	 oPJkG6UDbnTu4cQWaPYqtOawI+siQd7W0uNjvJSsNxyPCtKWmissweRkhYGy5nYend
	 XaABX+8vdVlQm2C8n6qrtekuaQ/FHCVf9NmIwhBRW7+HZecmBMvDbqxuTVPCcDlymL
	 K755xn7CaDU0tupxDaQt/DlmpgsyhhMtcXncQEC/THXEnWI/Z8320og7IVDj5OUM8+
	 e8TG6wo1O3NsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CEFC02190
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173846975373.16947.16450619432374062323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a18e41b48420e08a94d7edd6ddda9f5d34fb54766a78c5bd9e65841ed01c32
Date: Sun, 02 Feb 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738469753
