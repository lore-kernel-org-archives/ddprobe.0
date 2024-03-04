Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E136FA9
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709584697; cv=none; b=C0ku4UzJfgghMv+RgaSpmrKnrc8DAJEXH7wgSaC9p9BWEchOjJWlhSetYkfZmyythiEQyaPkM9vE5vswStebkceto/+cyXK1GIktrUIge3+7WtG1e4LPySf9iYhmm2D2jjD1/r3gVYa5ljBIcRBCzp8ycVAmwHvUheWqRQ7aZFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709584697; c=relaxed/simple;
	bh=9Mxqx+tSrD91phxzH7MjcfOPrnAlomIWcV/7oJwyQ0Y=;
	h=To:Subject:From:Message-Id:Date; b=k0h8TEOdV17Y298Qpr+4TCcFAkW3uWcjygfdfTkAzTCoC+ybSrwmax0VYFWLLqzforMKqsqlUHstWKTmdXfTbLP5cjK0MxQdD/j/yJJ0MeKZczmbFgM1KDKIjWagRL0CSmsrK78UqDGp10qKAzRQNhzg0p+lwIyAnTF5TorJ2QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooAIgCOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooAIgCOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7669FC433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709584696;
	bh=9Mxqx+tSrD91phxzH7MjcfOPrnAlomIWcV/7oJwyQ0Y=;
	h=To:Subject:From:Date:From;
	b=ooAIgCOgRwAhjr2hZPEpIFunivUKUGTzF0yYlp70M71zJFwVo/CDYrkLaF8ZIj73C
	 8MdJJwbMe+3gB1dlxVtexQrjQpxfR58NCU6jP/08Gmvm7gjjsyesNGwtQNbHHU53yC
	 G8OVNeT9JM7bnic9jmPHkQKqQfwcp6suH9AWMBjzhtFGm4gzDEFyDoeFfdGHlHHyCd
	 B68icPVJLV8IxFbXWAwnyovaEKkzo8gkOwZNJml/HG38zaHEQ96ygiY0ikDqFu6jr2
	 bnoEUTtaKThmdS0C5FaI70uovC4tqEUXZok/lWYH6GS4lw4oX2OtWa08A5IDQg3v6o
	 N93kPcBSofBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B198C5478C
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170958469636.14202.16587329436706885878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7def3c52158c82c8473597f805d194e475cc7a40199892c9c8c8c69e0ef73160
Date: Mon, 04 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709584696
