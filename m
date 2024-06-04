Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733392AD04
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717469723; cv=none; b=LLjt7OJdHOMBMIQ17/dSeRMyogq18HD4S41bLOehOffn3cUty1DGGsGoyTWJpSpL4hOQj3I7JqTgMi3eKUTeYFX2FEj7aFBFkcV7SmtD917imb5yRbW9oc7L3i0NHPgPdMMhqD9lIdHdhw3fHpZb9uAekYIa9MS6luGN9t5bH+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717469723; c=relaxed/simple;
	bh=Ewcy8p9TaLQfDqkwMJYw+Vt0rEafi7+v76SPi8aNDsw=;
	h=To:Subject:From:Message-Id:Date; b=rROKUYWGrVgfrj91Z2lKb9fL6kIa+jFT/bZzimeUSaaqR4gLlWGzODmn8y62kp08jcmv1gVDOZMWe7DaNJO4h8qX6hxT5fissjsMhn6FiJsooTcGbBXeGv48z3IJ67QNuMhwmV+/6ybaAkTt3Fyv9U+9jP+OoluWthNwefFe9Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvdTzy8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvdTzy8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6B5C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717469722;
	bh=Ewcy8p9TaLQfDqkwMJYw+Vt0rEafi7+v76SPi8aNDsw=;
	h=To:Subject:From:Date:From;
	b=KvdTzy8cRs5jP2dHt6GPrYT9AkXTVrV7kz0Rv9y04RgvMlE5PR6TAs3I7qSjTGEHE
	 Q/djGOu533agubWIMhokYKOJr3PdEeIqNoMdzZz1Sc+RIH0zL9V+89Gui2nh+dKszr
	 jRsTeZBbUKTC0HjBRwFvGVpVNsgQZxZUuljCOKXrWl+QM7G3691uppK08ihU9FvmCw
	 YUoeov7X2VVQNbraxxqhHSxjAoYdqEysqTWyrt2MOEKMfcs0p9yNckKOfyQqU+IQl8
	 OBAE7QCD4IoD0nLyuVh+gQVwPPB17+aI9T6FSdnTETbTcI7wRYVk8QjpYx5VPcTpn9
	 vQjhShSNSaJ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C44C25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746972278.17683.5000051483499875754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ddb07b40108790bb0775f2b959269c56dabe8625a9e4c660db5c6fdbee8bb3
Date: Tue, 04 Jun 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717469722
