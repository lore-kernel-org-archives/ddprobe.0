Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1BF392831
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791878434; cv=none; b=t7ygWm+WUd8QEmWzIk3My8BVcErjZqvgIvvho8tErUReXwyc78GRKqBqEsa9TYJAlumXx1RezdHQbr1Om/3MlsSn/W8I964i7wcpV4TunS/qlXCJZP8GqC2X9faSKq4ayW7I8oxgKt6NbXsYhF/EkOOvfkBroVYyYANJV1iXHF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791878434; c=relaxed/simple;
	bh=jy+iWlM5nb/2fNfaFkjdbf37Bhk4ziobQ1d1GKo5Y9Y=;
	h=To:Subject:From:Message-Id:Date; b=mOaCX5lGG80qHl88L3fx3QSGYVle0zSySbEKhnAQenzuRT4RYWekkT6fGw48doHSD2fQWyfKX1pyXmi6zd9YsTDdZd2/h94uIDJkYRwuJ1b7iFhcWh81kG9EO+wTUAHNsEVs1F0kR0pNwxHs0BBK93hGOOT7yXeiEdpXL+Bs7P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRZWIVOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRZWIVOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB7BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791878433;
	bh=jy+iWlM5nb/2fNfaFkjdbf37Bhk4ziobQ1d1GKo5Y9Y=;
	h=To:Subject:From:Date:From;
	b=aRZWIVOG0ZsghkkPDl6y40UP/mE5ieGd40qmRAyescLMda41ryaQbDle6a6RXPh0J
	 JuJv6l0pso5U0iNCMUSzMSi6CFTIFxjXIrViB7EHhe/NIbulcVCIOGcj9R8bJ3PolX
	 cTcJ+bB+gUvPu2jBHJhGx2Ewv1xkpgLlhNGTTgAhD/rrSzrMESjycjzFgmRVM08pbs
	 ZUskgW+Pb41pN7BMZ9lUo91RgHCp5chxNpQT91ZOJc8jEyi9aw9faFvrNmiJr9yanQ
	 k15sw7mZ88N1a1FRqdtIPeH+onxyNpGy76h2bL7+tS/+Kv7pKheZnj4xo9WPFNK8cc
	 DV9Cj9Mk0j58g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50CECC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187843372.17515.13812794972530168454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ac92703e87ad9edd3c56f95bdc2970ff956bd5c9294b159ce566c5faa9f60e
Date: Tue, 13 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791878433
