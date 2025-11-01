Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D66C1C3C11
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761982194; cv=none; b=iTDozKdaOfLNZmcs0xcHngE5L6uD4+PA61ahzHxAayqt8MCWdlIbouFCIquGdvIFyzoYKVDuAN9M2qwFCJBOq/rR9lSKjakEeCxV3bw/dqnK/MNuSf8E2+Ns4lDFsDkE6OJ7nbrhh+17Y40HRxtAJWh2toriZYH2qDUygR1j0tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761982194; c=relaxed/simple;
	bh=lBBCfM3EgBp/5R+rOX1yCVLKuS/48VL7ZVni02rakKY=;
	h=To:Subject:From:Message-Id:Date; b=Vd0YP9D2yCmaleDTaDS/qpNDpUfCfiGQJZ3JsE8W7ZeybDQV02HCsR77Bv2zJRJzCo0eSiem4KX5C0oG5NigU9NuoebRAzgRi/Hr8MjmYcXVRgBAVHfmqOh4+K7MKqWlMjAwfLQ1dkNIP0ByvlUkG8wMXpOXN/DK+2qGxj8nIPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgURCPXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgURCPXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8CCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761982193;
	bh=lBBCfM3EgBp/5R+rOX1yCVLKuS/48VL7ZVni02rakKY=;
	h=To:Subject:From:Date:From;
	b=kgURCPXtIGgZHTok6zQig0HdkKtexjqk9h62AGIQpckCUqBj86/zNlQkKOg25xop3
	 W4QJtw1S3zxCxRcytG8F5aumRdRukh9NLeIDB6oo9RNl1IRkeiy5MRkn+BwGYQWHTN
	 2ZSgIcdOniZGTje7eeB1nSgEQ/ZhZxFHNJaLIAK5lAWsDRUrnkTdSUrXz6GO2bR+Lf
	 xF0jIjg1OhGe8qf5A1rF9ALA8kfhoeLjjvIyyRb0pyegovZfbRYAFNb2FIkDZk71uW
	 sYwr8oZtwxIg2SBUOwthZRsK7YN6+jtXxwHXjHYWRKNQ2Bp/+QikUpAJNMnvIjJYuw
	 lntaabXVxuVlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C2CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198219358.26555.12495080097597719904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64103fe862f16c04b42b054f245340ac029501777b2330005ed471197851f79
Date: Sat, 01 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761982193
