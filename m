Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46B0352F88
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763741513; cv=none; b=am6+zzDGWG/LEumiY+YjJVc80oZont/cRbDOgMVt9gcupd0Ehy6yEbqtPpLeti3QnvglzfP03AaOmLzamoVn0k8RFeDZKm6limVf0Z8+yk/UwMn27/WuseVPzW57itu+eCFVsDMZgMciDSGShtbv+V3Zhh39lyc2ifXF7iI1QY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763741513; c=relaxed/simple;
	bh=uka+iexdfNdJfLznI0HHlTToQXnNdNMVf4XZS1gcgak=;
	h=To:Subject:From:Message-Id:Date; b=m0YqRAw+be8scu+fP0E/HfZxrWaz042Z6BcScM1GNxnlbo5Ag129hbUhpKPTWjoNTbLB7FzsYG2omAICa7PChDDdOiKGlY6guAqkS75gUoAzN2zCtn1s/6zsh1b69EjrXooeQkNwhGQ1ngVZop5M7O/rnBn4u3T9O6X5cYFpUyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pitjRTxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pitjRTxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA67BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763741513;
	bh=uka+iexdfNdJfLznI0HHlTToQXnNdNMVf4XZS1gcgak=;
	h=To:Subject:From:Date:From;
	b=pitjRTxrYZguTg2AoIz7YSastuCIXqnXYXz7Av6S3gN070s8LP7+XVzkwb7pvi51Q
	 vmtpAe7rOr0bbbunS0vendxxhupRFQTrcopVvV+FIiN4r8wDSJlTMSKRKGxgfJ35UL
	 SM77PwXyqVG2TU/s5uR/Wi2Dd9mf+kNYhlOz+sy/IdGKJWKzfmpcG/ucMLnJVNcZ5Z
	 7s9ezDHMKSg+VkdaPM57qjISiZGgtvXsDhLUYGsTTbiSn1H4OYXIJUgChClHLuCoiE
	 o/kn513YEh35ft2qhGKy9aJPQXZ8NJXqWv8fLfA39NPzmPT+Sy+0o9/yb1cfrwgfvV
	 vR8MeWH7bmjlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970BFCFC291
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374151360.13289.8941307671028180729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1cfba766a79c7c96b43e3f0beca677d24ffbe1c48440d6d391ece24dda9c3c9
Date: Fri, 21 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763741513
