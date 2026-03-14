Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE412566E9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773501894; cv=none; b=eQhDDQTFiEQ/QpHgKLlPNEta6o864M24L6DBWjSCGU6aIVWd7/vrQsI2oIjoE4kJLG0Onah2jR6V99Py7FQpb8xywOcdZwoW4R6H+7x0ZcP4ZnJkDZxDbu8TWN6+i5snZfas3Zzvw9+B8mXbiv1P7WDt7WgZjLOHH+CS8A6cAjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773501894; c=relaxed/simple;
	bh=Ddt4ajZNQqck0xkQNzOJJ0BK7qNsbNlzNSZ+KkK1ny8=;
	h=To:Subject:From:Message-Id:Date; b=be/a0YbqjypP5PrilQO2RO/YjQurFZBIkoSYbGBCApwCl48b6bM9qOukuAaIINGLzFRYfOawnZkT6N0Kw3QmuGvap7o221xx2CRb07Y3XiIE6/qejxDoDPuUFGgvBpFYfDaAIxKyb3pow26D07cH7hIRHd6M/iiHJfBCYoxcTwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmARIZ7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmARIZ7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E54C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773501893;
	bh=Ddt4ajZNQqck0xkQNzOJJ0BK7qNsbNlzNSZ+KkK1ny8=;
	h=To:Subject:From:Date:From;
	b=qmARIZ7kSSgWi4nwSeP3wXrtiPYK6qdoeLI7IlJQW/o5+fMYzFvoLzcM+JGupz4US
	 TNAv1R148UA16xWIq4GajOu75Xl1v5SYOtr3Ivk4nSzUd5152Wj0560zq3kH8Tijxt
	 0yW6s78IPn25fsKj/YOevGMsmVb+yhE8b04cUmlFjcJA6naeIRsOgrCo3D1dvkVbnD
	 Q9RoFVvmCZBO6KEODYPfw4ioNvQFvjXBcgoI0DOgEXbzvHdthXVXWWdmOE+juYPULu
	 lNgzRN0Xp7lLG4gPePU5WK6j1J27hpXR5PJ/XbTo8az8OszVt1dU0PC0cibOmouf/G
	 hvD0JAyiendNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AC410706E6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350189362.3494.16234284686629848409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e17f4ead9f5344e8830e323cbc6d23dfd9cbc6c35cb3dc144ed8934db7cefd
Date: Sat, 14 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773501893
