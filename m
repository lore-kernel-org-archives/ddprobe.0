Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B254A1A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748867394; cv=none; b=NnvNNPNwYx79QMoBWrRJE98u22ti8prbQ+LuvI2CRJUMS7XacJKFRK0pJa95WZgSbggor3rSV9ak1W0+n5egB2o6mMoRd5Fmyqh/9k4oOaH3j3xmio8OD83ak2nRxxgP6Glz/jfN5N8xIcNMzx7H+KfJ0MoFnTB2fwX7GrPsEiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748867394; c=relaxed/simple;
	bh=FexaZ56l/TF0De8XbH52Excrf5n6UhraFYT5eZZ7xJk=;
	h=To:Subject:From:Message-Id:Date; b=FlzMK/iiw1wKKKWBpfeYvcOqdPyxWm6PM/8ulw0azZ4HidoslR11JRwp8RNTAb9FFEDNay3Co9Q0HlLe1+uU0NDe5o/PqhkEJLNiZeO9M2tLhbdZxDW5tA3xQAvHQjO2jkpWB3Yv8rlY0lxI25IMA3845PUzjartmNSIb/jjD7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbH9OkMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbH9OkMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748867393;
	bh=FexaZ56l/TF0De8XbH52Excrf5n6UhraFYT5eZZ7xJk=;
	h=To:Subject:From:Date:From;
	b=FbH9OkMK9vL/25A68W8vBjVpFykOaaNRkJsJcmJMqzaO2Wj6YSnlnzg/unBjRqhFl
	 NDDnJzscB2/bsNnh9PyZHJ9c+qPjR8EmFhQZXOxw9Ry8ksiRyJdG6ccmhA7pv6aM+A
	 5mx+Xh2GdGvE7pWOKZcVaAwDBe6CXt3+FfZ0sLbhnuiaVgv92/P7uk8GPH1wb+/pNI
	 yCMjNb9ILrZT7ICB8PPAgTDEqJTL9sssrL00Kkw9Pzk+ul1UdjvKtdMRV4gUGCiYfW
	 P0j6IwLUQO1vFCjnzESIRxIezjLQolclTeurCcxPHW5JXk5GrTuT42qDQO+0Jx1KgG
	 hREzU1jFC/0Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5BAC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886739357.9107.2410979751298728391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadcdc2e47748b15ae37c3812831e26c1e4b2877613749f876f705d4f670f8e9
Date: Mon, 02 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748867393
