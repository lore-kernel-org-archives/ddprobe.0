Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F29142E83
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776605254; cv=none; b=LZUThdRz5TWwc1oHTMFB9YPPRH1iKfvXVjsQtYCgVRHhEXCRdojVzIhsMROW8kp3ljZRzQSnkh4LnOStHJRAr3WiqZ+xxg5Fbt/RC63CkPjsEEAyHGE/v2Pe4IFmcxsrzmzvwrE8JiKcf9MmwSm+ZBxwDKvCZ42TNnM/ZsKg+v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776605254; c=relaxed/simple;
	bh=+NR5xxVCD/MNXP4LosrxXdGuDVZsocCQL7aks2kY9wk=;
	h=To:Subject:From:Message-Id:Date; b=YORzQUpYLGaC8ZJN4sCOSf+138XX+WIABMLXHJfrK3q/IgY/m+S88AQvmQoyJe+peH9mDvNEVtK1FfFLSjQqzNQa6HywNS2e9+hWbsEJLzkZPrzQ7WZyyDiJHROBSaQEoFGyxJpEtAdiyS17yTtbAvJqMd0OyCuY4fRgnJD1XZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nD8YUhy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nD8YUhy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD93FC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776605253;
	bh=+NR5xxVCD/MNXP4LosrxXdGuDVZsocCQL7aks2kY9wk=;
	h=To:Subject:From:Date:From;
	b=nD8YUhy/pzo+DcjJBql4Juwi5dmgKnfersneGdEq5r4S9qnAG8B73knT7CjM9I0aC
	 oggqoQI/hGMcLuV59i242Nu+MH/UAh/HGBHEpGsy2Lu74b/u1DeBJoG5TUogFNavlX
	 NER1aidUoMzXzhJJ4wcMg96kOGZY680nyqatQpJhgYBZ6Dc/MKkcN8mpzbc2D7cHVn
	 UVcedxi6mZ4popysW5WoI7059cNXSx/N7CV6HI0JgG+98Ed1JH6SDXEMzTW5AbQ09O
	 EQ6rTn2DB9Da1F1pJbN8dkCiW6q2gRNgoMegagYAj2gwkzNWXCOAzJxHpcxZ618Ged
	 cMJ6FxxigDoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAC6EA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660525368.24719.7388695462230774901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de441adb00963d0455535dcef1e019079dcfc9a4927824bd9cd58c2823da3058
Date: Sun, 19 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776605253
