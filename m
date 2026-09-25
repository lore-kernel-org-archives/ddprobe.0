Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658B3367F41
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790316034; cv=none; b=n6y13LaQIdDYk8mCdjRxH/X99/9C+A7dYACROsHSb1AHP3MqzrRm3yJ0v8+LKpbf3wpPM1S6PVgpRwOSa1B1ZzYf6pJ8NLXu0YBFURKhB3speCS0gHpHBl9TD+8EH7IbOHwp/aLejUsdi4ThOzFXITiI19b+w5CXgsP4wnuAe+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790316034; c=relaxed/simple;
	bh=POmvUmAyAfWVQV6w43cX+cFWF+zNLZL6ilXGfh2w1Y0=;
	h=To:Subject:From:Message-Id:Date; b=UtS2xDc3i1nFv7FmXfYxwU3uH1c6XeLlPT4rsZDaelolN7uJFJLGRLrZT+Cy483n6R+RH9X1LQNF7TGMqJtHrVDGeYWSy9VC4lXJqdFtR6FU5QhgitKWeJEzjsqWbvTXclekNgwpZjT10NEG493zbpfafsVcpIDHnHjYtg4Vnww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8xPcKJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8xPcKJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D511FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790316033;
	bh=POmvUmAyAfWVQV6w43cX+cFWF+zNLZL6ilXGfh2w1Y0=;
	h=To:Subject:From:Date:From;
	b=e8xPcKJWYlgxERHbKG3co5D3PE1rLkIvLnPsEIz+Uw5Y4rRkpYeQY54lVCQElbnFQ
	 9OUiShZSrQs1kNu+06vX2tDpGVBCRIHvxtXekiBGIcoNC1tmE33CpefTuVtagsv86c
	 8UZYF3/iC5JsHrN3Q90F1uYUroCMls00eApU9ygscJtFaxiFhjtRB3PQcmlYkxZhSb
	 PI4fFCZ2wtl3XQg0aljpKuCWXOG8Zw1eisvkASIKohPMnmPABT7FILrYHLxI8JqhRr
	 +bqHuZG5d3Pph6/pyZcXsQAwsquAvjSa1sB7SvmyRtz10hM8gure3UV8C1yIJRNx/t
	 IkY3S2VEgiOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2248C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031603370.24688.2476133318567208875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b12a14991f7610ddda4220f51492b984d2ba68e3874e5980690f8fc2272689
Date: Fri, 25 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790316033
