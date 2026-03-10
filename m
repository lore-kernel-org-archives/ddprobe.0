Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B941F38D6A8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773160493; cv=none; b=jPEg3OUlTn5d4bobcgOlrs+tAVY0auarUrMr8uOGjFvioDdV/L+bsq6JSMCH37ZjD00kFuSgdc51fbVeY7+r2rzfipaHAMawrKEYrMHv9GCjnvJqaz85z1Dblr8M8owE1JZvVEEiQ1+yV5ITC+NA5vWakvpf+qZN0xYeS6bmhJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773160493; c=relaxed/simple;
	bh=Ct6X9wtF0uhVreoOGco65EXErXrQxGbMZ6cmulMzUpE=;
	h=To:Subject:From:Message-Id:Date; b=TQh/jOiR9oWEEG5hvmM+h34FDoN4tXfIOOnlzOnrAy9TGkmktoW4CKUmQUUABa0lQlbx7mG7rZBoBeAdc2c3ADlyPIzF0CSD1pLwAFgMnsi6zTGBhkeCZjOpv5fN7UygpCyBx08n6cU089jt7GuVRFjsRYwk78uJTOeVmW/aPJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMASGNg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMASGNg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E173C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773160493;
	bh=Ct6X9wtF0uhVreoOGco65EXErXrQxGbMZ6cmulMzUpE=;
	h=To:Subject:From:Date:From;
	b=mMASGNg2L+RtwrL6DFybXoc3G49BcLMKvk6uSJe4QQXpDE/oh61eY5LOM/RXa301i
	 Qp8051sfIO1aoHWCy4Q69V7e/QvHx+qYMP0Pc2ZS93dguAg2jcivxnOphqjLDg2zOo
	 xkv+2FOVS5GCT/JSugWq8kJEVxtvZvkHRm96xnnLpxvw5QYzdRRkjZ/PhF9N9BwZLc
	 9Rwk59HEgsiXu2FXscNuE4NDksO2QmuMiZzcKz61W4kLoPCtr9bziD/K8svhEGXO7m
	 CKs9PW1HYgY+aGOlU/Sls6+6msmsj+OstXX/vtQdXm+6I+w+Yr3I+PGFO2RuK0Olz/
	 5IgxTK7N8C75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC35FD4F04
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316049358.19462.17846571769258018310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6abd0e6f50d341b292f330dedd3ebcfd47d3f754ed62d5fa6b08e101153a218
Date: Tue, 10 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773160493
