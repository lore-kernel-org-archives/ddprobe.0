Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DE31E1E00
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761508194; cv=none; b=l+DxrQnsYb6ZltvrjMr48p8FF+9BjvsY6Hd4I9CSN9r6TMRbBoXkUerxZ1Ig9xKJtuPWGTpi+xKLCKtsczYpTAGO5RsXCS25vsRZxRxshdrtKzv7ml8esU8IL/9+Apv9f0O7gbq6RL9PYCn9sFai1HrNqtqUfhd+TZDvmp0dTig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761508194; c=relaxed/simple;
	bh=cCL/lSQnkX77wMGU2Hv8bLuYl9il6nIE4un42R3dwbQ=;
	h=To:Subject:From:Message-Id:Date; b=McajN6d2n8KFljP9MS17z9kuO7suiu4w4Z3XLrDRpiLWfob774G3CL2Bc6fdpNVM4PKKjKyedDDzyK+vuTHyK44NHUjn+ef31ySU+Bm6xB0HFo49rfExEt5gPvY261x4rUMeChMn0YFEbPojx5v//RZVBZYDRjyMvuMSWh1lLMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+UOTyA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+UOTyA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0174C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761508193;
	bh=cCL/lSQnkX77wMGU2Hv8bLuYl9il6nIE4un42R3dwbQ=;
	h=To:Subject:From:Date:From;
	b=h+UOTyA12fqkQpwzNRruEg1JdEcHL7qWovbqekaw/Ua4UBEzIgjcQgVflIXTmsHsT
	 1GL7JLfmZz87rar9cyG3/rhrcTrnNVTZHmCNbtNo8kX3evdvhu2b1jBP6atO9bFqX8
	 jGUsCfslKJ7TJnaSDVNOYH9OlMBiYj1VB3mo5a0Pe3HgVOK5BIKX/GQqfhFuiWvhCX
	 XOGboBmX5nnbAopkym7ug7BQ4+y6nZGIIa8VitzSG/ILj19bVX60y1i/zDiX5fmPbG
	 E7PX/i30KVZWvIUeYf/Kavvm44NM99w+Hlc1Aq65+7EL7Reiqp76E3kCcNVyqxHi3I
	 3cLyLFbW8oq+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A2CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150819357.28953.4426502217860781583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ff493a936add8bef7ed00df9f340f75167fae5b7da128a588f1b787561a5f7
Date: Sun, 26 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761508193
