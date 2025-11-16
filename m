Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE7D21CA0D
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763315514; cv=none; b=jnKxAgLswXpP+qilm77lqR3QdQFG80dv+NjGOe9FSmurEV7jdaI+XQYeE7HnnrLQus2HUNZ/2vuU4dL4pdekulO6Lo5DKUqnK15wWVn07h8XVbxSq0vEbg5CLgNWgYvYPETIH1HCX3p9t8zksQfABM4efCbfPlLHjJ0x19A7UNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763315514; c=relaxed/simple;
	bh=x4JENT93T/sibF51ArJMyWQGbfRdG6faaY3nyUE48LQ=;
	h=To:Subject:From:Message-Id:Date; b=Ug92iJ2uG4gCLPZU60T36aoz9+8r2VDTJ5yS05jiPLgStRTj3MLkjDdSZzMXmyEzk+i1zdNqu6kND/9mGyJR+1ninUKJXVmbW/zBbKRGlh+FV7Vcq3stwDfCHE8+EwMKXkk+6boygzoN5nENIERvaNwO1/azSMIYiyJkiXyvX9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUKLNbfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUKLNbfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD338C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763315513;
	bh=x4JENT93T/sibF51ArJMyWQGbfRdG6faaY3nyUE48LQ=;
	h=To:Subject:From:Date:From;
	b=WUKLNbfJHhph7/sqDyWrLOBXUuQlXUXI80q2i+KOeimMDQprtErwUHPIWpEiQxegt
	 uuWuh5Q6IwNL63LEtiM66riM6JUdn/vr47rhqlZqJLixdVfpSFctAA6QGg4AwUNuG6
	 ZQJYChZ0Nx0bzegD5Hxbmtj7o8LBQLAa8Qh/f+sMIscLdz6I7K4gLvOahbMumEoF8y
	 p1aW2LtNFvtFy+rMjx1NJdfSUzNpIs6ZXJhkjcaGRNSruMhJ6n2hoWjvMv/kvBJ6pg
	 MrOdnAui7prDgPMNZK5VegzGO45DEr6n/4EAHH/f6/Igj9FZnGDYw/Aq6BW4PSa6b3
	 DeZyO8nSDR+NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F658CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331551357.16606.12308476004336016483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a8574b83b2ac2bdca6724463b8c3e18508334618048e52df3389b383a73d41
Date: Sun, 16 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763315513
