Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA2F3F39E2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784195914; cv=none; b=jC9o/KDkaUzhtW2txkjmi2s/ZlJ/Zo2H+W2TAEzOv0uT6jixVaMQ62i5Nau+tHStZnrfQyaHaW+FlOpe8/WET/+4nN6eC5uhD5iTd/cKZr3K9Ivk5J8qei3CgRnsQ58zp1BlinQC415NYg18l6RYGFWjuF9D5dX8fvlCocS3e0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784195914; c=relaxed/simple;
	bh=7s/u6nPpVbsQIkH+rNcgMrgKxKOeFwJxktQ4xUZCquo=;
	h=To:Subject:From:Message-Id:Date; b=NI6SQp9O9casywrrbWI+01EoQrck1LRzKIygTNg2qeZ8uqFzLNRY8PDUyLJS13JZrlniPlS/zgl7fUJ2tTBAOh5c5tI+RMz5gYeq/EfE/pQWCz8thgK9m1paqeQkGcDNqW0upNVo29zVEWYz1Z1qP+44k8DjIwTiU+NHV0DC/h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jv6+6uvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jv6+6uvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0A4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784195913;
	bh=7s/u6nPpVbsQIkH+rNcgMrgKxKOeFwJxktQ4xUZCquo=;
	h=To:Subject:From:Date:From;
	b=jv6+6uvgDv0cgM9gPmH6zhD1d9zpWS5kOiCtoaV4GUG3FRM1CiA/0Nx5TjCeehlvN
	 ojt55/Snb3kwiAhX7QHa5podWhpDFtmPzTP9p+DQvzU67jtZMTuoAQ3MmdeuT31kZa
	 qcQPiyJOlLaAqJLwvjT3r7wtK0wKadfO2mrSRKAFi08h7XNdwgMhS08VvDCFLbKSAO
	 qeLbHbmVYPnSBpm13KYx5LVlHIgZzr2Hv/BJC3pQ+yXaNP4SjG4I74r5GSIq80C29d
	 V0WkUuXWlvKIj8HbEdZnOL5+507dFK1rrWR/AT1niMNzn5cTmecOMUWtBPBBU3EhPm
	 qjOKLwymxuHTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F3C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419591368.22612.6341144387020065590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc21aa01e91db74d5af5fc7ef43452c087f0d0ef823973c2b85ec390e10fce1
Date: Thu, 16 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784195913
