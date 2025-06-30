Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABC22AF1B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751279394; cv=none; b=K87ovqtufuhpGHZcHxW6Z+Z0//ygd8GRGJOjQ6LuO7BkyNj2vSXMfwqvPhIHzLPQYzvbahNllfZaEfBIXWoBe52pjEHUUU7Botiia22dpfc5k8uuE18ktGZfF3hU8mxCbsG0fvbglbxp/N9SFc5JIzlp+rYMmHFfFY4umccRwn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751279394; c=relaxed/simple;
	bh=d1gqUgfKOl4iCGHqV57OSK4Zj2O5YeHIW7ZInD5c6ag=;
	h=To:Subject:From:Message-Id:Date; b=dJFKeL9jpAICO6wJc6lOq/YOYq1t19AcWjec5jb/FkVw8NEU0JdiIJpZBcXD1Ec0vPOjGseXVSZm3Nn13ddygYh7q9LJxaq8e1VcFbfAjBj5f3lS/6mh974ydXa5m+JrGB7c0oacfeKWE1H1MI8hzaEgZxj0DMRdmaYYjm2suXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj5YLmQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj5YLmQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D58FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751279393;
	bh=d1gqUgfKOl4iCGHqV57OSK4Zj2O5YeHIW7ZInD5c6ag=;
	h=To:Subject:From:Date:From;
	b=tj5YLmQK0nnvrEcSwBh6qfliCGuutKf5wlRqyWe6cdaNwsz0WdlBMVkx4jGmR2HRA
	 v/VsfWQBPy97kymdWLmAMshk3/vX9BrdKqs/AursmPEMkCUeYcQ085EOTiBLC8aqsy
	 kCgJuoxeVAwC5q+QUEiG4XyoC42jwBy2lwFsq/fgzWgWfi3Gh84TCRqyB88x7hMj+t
	 hGS+RtHtBWnugObXsJjj1qKSempE1KaPJM2lhgcfc4kCCU9lUnJwOrPpt+r3i/dznq
	 g62Y5hm5aZNav02YHeTzknCncggJUHlh35rZD0A9y3Lc34J9kZzSK4Evu44v2aXsRD
	 38KLaKq5D/rew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA8C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127939357.22798.15794850595459512786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29080cb18f3ca480f4761e02f457c9e36ce6c982d8be976bebcac994c50cc85
Date: Mon, 30 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751279393
