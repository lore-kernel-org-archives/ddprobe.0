Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4813F37F73A
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791585634; cv=none; b=Y85wAtvUG1IagstbbJkt+W3MMfLmXzlSWetWgdW/gSJmitp29B6wEE+ZHfEcXcUO47HtWVsoYmNTkXPhVcQdAE0TGh31ZUZqXSsmKPG5oeylrNXDC5P/XFhBPhjoS8JeyzgGfT1duC+mEhRAtwMokljrlRUCSiyC2FqcCG8OgWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791585634; c=relaxed/simple;
	bh=Ozho1cQHetY10gLw8/UH9gpj46NX9hBB0lU6PA7+oF0=;
	h=To:Subject:From:Message-Id:Date; b=qW633R0lr4eqJV491tPUnVV9VT58TBsFu52yrD+jEVmM7ohltYHTofEgezpSg+8t6welvrVQz6mBww3yObjUWuci5zXhQTex4gllfUUYNwpwOJwPs8fANRQXcI70NTzGk2FY4F7OSPmZ/Icr1qpqyeHkNRrGsxxlziEHFJgqbYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwnd684a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwnd684a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC34C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791585633;
	bh=Ozho1cQHetY10gLw8/UH9gpj46NX9hBB0lU6PA7+oF0=;
	h=To:Subject:From:Date:From;
	b=kwnd684a30D0PzIJaiXvfEf68/aS/ScPs6a5ImDzATNHBc1KPw0jLf4XS/ZOMfuXl
	 xGJjLYOLfJTz/oyMlYUT0VldC9eZ0MMpYQOklxpJ26evk+q6IAVmZnCFdwZtXZAf7+
	 tj3VjadzDqEH+qcFrSd1OumdytI14wT7oYuMSHGjavABVTo+QC94AuxEHb/uylJUHr
	 zITTrHvwUnekds39ZUE/wsnKlB9mh8ktnM1ChlWLTUREsMjwLgrCRlbLeSsRIAVGr+
	 wJpKI13aX83G98xXfnUGf/U/r+z8WNioo4cP6EdBU/ITaeUBF450ih7UwFtyAEm59I
	 94DZ4c3D5gygQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA08CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158563369.2014.4473965782639595714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f42ff5ee92962d4e6c2f21a5cebc4c762000b0730a6a03e87156aecead972b7
Date: Fri, 09 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791585633
