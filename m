Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F5E262FFD
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745399394; cv=none; b=Ia3TzDorngnjTf94v3WhhHQnf44TJzosUIr9onq/KJkHXatg8k+xucesQyeCXgqEWA8TGUk9dIAR2b/DYREFVYSk4iR2ubyqHjW1m+qCboTj3ixRvZ3OCsU7Ihn2hKNB21H8noTSDOx9E3KZzLlucIGW3K2od0UbRZVhCGb3QJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745399394; c=relaxed/simple;
	bh=ygtrIDrKzLlUb31BqzhKmTryBhG5CeVv9clcauzc5qI=;
	h=To:Subject:From:Message-Id:Date; b=i7BFzDhdwoSNWdJF28aUvbSCRvVsjJIBx31KpfpCscqZkLmQT75TgqE4hx4R5JtyHbuLJntQa2fOKBnh5p47zKlSeQSFG0pfaxm4Pgdh7YCeOzUYz3eF3/6TzG1bgSlVznfz170uKYpy3zVQ2fvl7yFtismsS2iJOl2xBeQsNeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXlj3Bf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXlj3Bf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD98C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745399393;
	bh=ygtrIDrKzLlUb31BqzhKmTryBhG5CeVv9clcauzc5qI=;
	h=To:Subject:From:Date:From;
	b=hXlj3Bf0s85oeeZOF0LiSf3qcKn67nGMkCKRd7Tt7OMj0o2Ij5iUMhWosfQ7de29J
	 RwF3lohCsOTFzBl1QVP8d+PmSBEV/E8P23SXis+Y7+FSmZKkno/7g8mE+T4LcbKZpo
	 AtkCtuyhJKWQfX6/Fnr30Y8SuWXvkPcqbI+gWuudqzVQivNeHt0XNv7v7iKkl4wOIx
	 B4B7YfTP4cibtgsnJaEQf0yW3wksJhj4xU4QfO1Zt3Q4JD/pJozVI7uV3mWPdMQ99l
	 z3wXWe7W0uNL5bIzzwbugKvebnEjP61syoZ84fL8OTh2uKxHAHOXBfnsxZMAPnxTVU
	 5VkGf3E1hcUsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E685C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539939357.26804.17859158349257785513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a720f011dbe7f5b4396c487d7dc0df1cac121c8161ab20253371dce7b88723c
Date: Wed, 23 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745399393
