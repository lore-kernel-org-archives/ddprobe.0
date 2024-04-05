Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9271D530
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712338096; cv=none; b=U6mfnJmpvhZxffZ6lEzz8WQVbAiSSUh37VV2Ge3HsjQZctYJ20bP70EMWRvP9Hu88J9cBq37mGQJFlcs0n6nT40ufUbMTBhY+QvbOQ1LBc3eqETfwjINyNRen4SvLP258p6RlfBj80Rwr0FT0ZdXXYMM+Kj+IWBAOF0TWxrhQQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712338096; c=relaxed/simple;
	bh=dV/75Mdg4ltgxVaQfhRVRe47lYbXr2mbpvL9Jw/Eqhs=;
	h=To:Subject:From:Message-Id:Date; b=eSYwrQ0FCgXJJ9eIfJ0LZVlaIuJct+yZIo99saRHGUSNOutz5+yrukYQeYgFJUDuFR1RAWsEnn4sTJtRNEhHwYtBW2/LYiHzL02J5bi3TjhlYye6CTv2nXk+3AY6RFK9QWuCNre/sz6Mpnz7mJZsOwU89+awhTmNPxz0DKV85RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEo2rKYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEo2rKYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA9FC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712338096;
	bh=dV/75Mdg4ltgxVaQfhRVRe47lYbXr2mbpvL9Jw/Eqhs=;
	h=To:Subject:From:Date:From;
	b=GEo2rKYfncQosYxdAo399Z5u7+uBbJuqKwBn1gTtbeaoSNw9ldHI2nliIn1BNVEor
	 XeXZTK1Au2OgzwnTtG+9LgNIlE+Qa+CTXNvUSATLiBFo3793mD1z2w9ru7Z4It3RLg
	 jg7SUfeJxZ6C0nRerfmM0BpDRrB4h6Zu9djcFy5aZ3Q5lDH9aC6f/N2nxJTasnx4kq
	 uZOV/sfYF+APueE9GZ0HkBCYhkeZtxGXa8aGgg4OkQXAZ98t+OFDKD/YthDp92Z6T7
	 X/zo4Bde31Z/BAoFUVcbcj754nu94wwBt4z2yiXApgMml+BIfmslSFAsHO9Wae7W4V
	 rIqMETpwCgfPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA36C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171233809641.15898.6192075748665251206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c227a621187d3133c12c470297bfd21e5aa280fd33fc11bde577872df06e9ab4
Date: Fri, 05 Apr 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712338096
