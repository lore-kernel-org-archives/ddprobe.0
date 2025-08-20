Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240F02868A9
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755681594; cv=none; b=L0EJOKNa1j/Gh31f1F71RH/2Yeg5Cs/dXtyahrkaMW/g3O66YJbPNYUIQe/REzE09Vm0crcvG7onkvZK6f34L5OFbMcIQuaHUyQoxLuH5+9NekkLrRW5iT2R30G1YMx7wp+8hkxsag2bvuLhBT4KfAwPm8VYt/vZtN4D5uSAcNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755681594; c=relaxed/simple;
	bh=zdx+a2DrYe8ovsgE2AvF57wL3ryOsQxCW9gcf59YxSU=;
	h=To:Subject:From:Message-Id:Date; b=nElPtrTrlKp1GvOo8KQcUsSNxvOyKK+f9xx2kkSoafIJfWy0RRx6miG+K6v/JvJS7AIF0LFEifBvXhfK6NjM0oxx1FGmspA8Dwz+us+TZLDRR6ccirFQ4LZqlyu98HnhUnJqj4gcuu+FAeb80zFKdR8oY8TKelOMl+p2EyNYwsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YExWsWTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YExWsWTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E844C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755681593;
	bh=zdx+a2DrYe8ovsgE2AvF57wL3ryOsQxCW9gcf59YxSU=;
	h=To:Subject:From:Date:From;
	b=YExWsWTPQ0L4oxfkA2/ui9LyB0B7uW8rBriVfyCCbUZgpJzq6XODZDnpOxszRaIlZ
	 6/puuJz6WkW+fgOQ+SU2Ag7U4JmUllPrKz0bbO6lY5pJI19s1Pze6hDN7T/FjHcWnK
	 8i/VIcXkC28aTRPw1jLU3xIPxEoN0jk1XK4HsOMUzNlR62DBTiH8f7Y0gF0jNrj3pm
	 w1+GHuelsX/+qJA559tTjHAq2Q41T0nD8+oWPqJzyPzQj9h/SwtBbI+PR7d3Zjl7cz
	 2OH0VrL0Hd+b9QIzAXmK9rCSCtdxKjr/cMOKbr3uM6aoANdYUn/JoC/j9COYfWFvcR
	 tVj2xRWEy1Q+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E220CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568159357.31369.15831912482576132881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88a48b480dc5592f3b19cb5de03f5605e461d7e03225ec9312d1d34cf8ee0c3
Date: Wed, 20 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755681593
