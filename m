Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213C881AA8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770577434; cv=none; b=Aew5aspBw0ii75iJ+I9kkIrILezjB+VRVqkUwnCjZsrJj+NT0n26iOFjie/YqOSSiRgiIuFW6Ks/hLyP26imPN1rELQ2CVm5VVz8b2jfgGGszffhk9qY7685p31NixBF4NbOYcJmNVgclCj5rUm7Dwt64gzNQazD7l8pK3p+s0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770577434; c=relaxed/simple;
	bh=v/hAvsvSHh3FRlWOgidcHtoTgeLXfdy+TFqf7F+Q+H4=;
	h=To:Subject:From:Message-Id:Date; b=bxvw6PRa1IJQQ5KS4QXA+3okoWq1sJjP0jOC+szCUkXna6Z2LQQvXuIOGTo+zkA3iHXp48EwP02HRl3EJ6tdo07kl/63aPoODuUFfQzwtM4OlT3sJqJZi3hEEqL8m+LaiIukZDlLs5uHfoTpSr+LLXomJ7H2JOUcGRcTtCRIW8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS5SOmDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS5SOmDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0D0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770577433;
	bh=v/hAvsvSHh3FRlWOgidcHtoTgeLXfdy+TFqf7F+Q+H4=;
	h=To:Subject:From:Date:From;
	b=jS5SOmDMEXZbNjQe52B7yeXWf/1YIA/PfYML0KYlL3bVaX1Bz7HVzS8BtrXODshey
	 OBTudfIVRkM9blBnEqnHmsJXd88iQGzOzf9Yw/KdD1k/4xhNJwZsptEzjc/2v6LWAS
	 xI1wPFf9Ej71TO/MdXvj/ujYNHyi+48XReKXXCG6pDjdoez2LXIImEL837JJqLY92B
	 Q6n2mDgycvtXvoyQ98Wi0aPOE/kGz/2G38/bazUwhEWR67Hh90Kf7HQetgGM/1uvTj
	 E9HbVp2BgH8lO3uvl0c1TJEFIa4O6Cfdaj/yn0u1j7OwdTaQ3XcsqXfEbplthYbELm
	 I2vCXadrlQPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F48EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057743358.1792.3431149939219080519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1458e836f605517d64851854a178d52bff86f6ea876a6821ec6e062f704a69e
Date: Sun, 08 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770577433
