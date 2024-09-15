Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBBD11CAF
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726425954; cv=none; b=dlinUOD6OOhwHnM3hhXgEiTL/zfIqnjoW90fl3P22NPSLzFK6119jH0or5s8rf7ofnGMsjizTwfcjV2dAi3HGoow7F3ge5ZwgD6wXzgq5uYW+xQpGt15XIgEG3b8jodUQEokQ/xri9u9mppL6UEwcJmN7WQsXdFOQYhPNWgi6es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726425954; c=relaxed/simple;
	bh=Z//UiO46XzfCy54LBLkL3iHhQhG/BJx+NGaZJ8UuxTs=;
	h=To:Subject:From:Message-Id:Date; b=YE/DPJnHuDAPz4/cu4ufR3mtWrX6vYZAixNmrNkFMZJ14I7RH5nNz1rqqUOzVoknpvyy/0L23z2wAE7jxnDABdvWTaAjpnosXJ9HGtfj1ovS9JwseiwVYl6I6EZI0jbZby/Vd2V7SyouyuAnmED6f2Q8Js59W+kFe1myIVIn5yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBzbgPfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBzbgPfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE74C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726425953;
	bh=Z//UiO46XzfCy54LBLkL3iHhQhG/BJx+NGaZJ8UuxTs=;
	h=To:Subject:From:Date:From;
	b=OBzbgPfMWiwWFeECtGOYLGOM9y3RQyaigtQqWEygJgkvxn/oBBEBjzHO2ftvXlheA
	 gs98EeQlrIgZ3VOguxH9y31iCiJo3Zkr3W+/K7ObSgWicISi4Mvx37CNOskv5ATmcn
	 xBkCThPFLbMRxTTEmW7vWv8rGssjZPTbqF/PFEuuqvTnm8ADGKqvejvgNhipRaD5P3
	 x1WUM1fEvABmUZwQLYSgjx+QLJyg1mODKDwwbsMtTE7a0fl0rZEEHY+U1DOouS3Q18
	 me07kIOVDK0E75ne5XiY3mqfP4FIMlfZLB2BRPZmdMSoxlt93tsTJMG3ywKRJPx12Z
	 rC+h1PmHfET/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99762C3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642595359.23549.4687202186621942722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8084bf7af177eb5e0b96ae806abebf4c4c3c74d046e881eaa9fc9179793aa2
Date: Sun, 15 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726425953
