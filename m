Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141AA72628
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764727374; cv=none; b=OlGWqRcbXw9XTnPUVFH4MOQ5Pe9uwbeJqOxZh6kGU5YC+fKPOjUFRQw6KJFZlWSeDcI9muWSWsJkU5X0oKIRJM+cKG/sJbXyqfjtiAdE0cwVoYuW5JxN8H8uJTu8/K1SPByrq9RJsrM/rmsRHQeHuy4VBkETp8Mck/aLmWAc3UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764727374; c=relaxed/simple;
	bh=ssnjg5wAnDEGehZZt5DHMKr4kTrpOOIswea1Jacgz1I=;
	h=To:Subject:From:Message-Id:Date; b=p7+Vf7jRKKPlyx9I4dB7qvKIMDZdUq3G6THlzbU0Hrm2IuL6WLdKJDx/JvXB6c1QV8FzKKKKz0AAmQFHZ8OP7CQXwJD2m727NPVRustTOV3FY9WkAJ4nL0+coC8u2iuNNzfe/EwHejS+kRCNEfWNyCL0PXG4AjeZdQVHxQee3Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPY8sA56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPY8sA56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7369C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764727373;
	bh=ssnjg5wAnDEGehZZt5DHMKr4kTrpOOIswea1Jacgz1I=;
	h=To:Subject:From:Date:From;
	b=LPY8sA56kG3Q6k+0ik7Mdd0UNtZwGzPgt651F1hTqiGhC6bfFdL/VeFvjr8y7eJjy
	 SXn/RUKrTXwQ2KNFS5m7wY7BN974Q2g1gPraHiSmPGIsb/w2Sze6ohsoDEhi+kecg+
	 BrYhuQR4d+enyEbmWmMeoLJLuzxcaPVH0qjgo6tfi1ua/94ziv5sfyPh/eoS9jwaSr
	 JfPgReClZcM9BbikSPAFzONxlR06o7RPPZccv7DQThxjIdPHYKS0ohmUABwvyQyusH
	 bpvWgb6FSyhLN4oEUDFkO1AoqKArGMmw3SQzHI8DjRxTZRgV4c/mTpExXbD5QZ40ED
	 KY2OTuSKDjhVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9608AD1268C
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472737360.9571.15180547729171737712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978565d0f05a3906297395fdb9cd6e14c1b8ce83f881a283cf27d2c402b9aaad
Date: Wed, 03 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764727373
