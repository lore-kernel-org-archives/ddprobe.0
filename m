Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBEC3E49D0
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788171034; cv=none; b=Q+2n9CygdTKi5GoeI/fvm6SLherzLU/JfdDI867dbQ6Z96k2wPxdtAlePyJZLoPj1hlbpbKG+eXqKSc6We83ahnwJIv+7sEFx5nr1WE5XqKu8OmEN4VGh6K8PIPtcMaWc0bMAZOZNvJ9TCzNLiMYRAU/sClsFSe3rRINwz4zb04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788171034; c=relaxed/simple;
	bh=lWTn4NFKSDuF4BavQMZBfUhjCSEdCv3+ju11WMC0a4Y=;
	h=To:Subject:From:Message-Id:Date; b=Zjj/YX7nSYPtiSuSxsypZooq+aK/OICeMt8yJvaHgM0bnSRkJvP+IRUEq626DC89EAZtk3/+mis8XYvyjVEeF4tVL+LxMbzB3kCLBU6CVLXZtYOebKHcrnmCdd8nbykFZh7u8EUMcrjJIAh4x9hM9NAfTD4cKHhq9oBDOSSA3Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzHzDS6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzHzDS6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF0FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788171033;
	bh=lWTn4NFKSDuF4BavQMZBfUhjCSEdCv3+ju11WMC0a4Y=;
	h=To:Subject:From:Date:From;
	b=OzHzDS6fl06YC6f9olwtENiIuhDjn3Z+Ffb4C8rRmMhILAjGlx9zblsXkLlxW4tPn
	 eWsawMoO/A5DJCpefYM1k/0AkKrNksbVwrBLD5W1HxK8/G13BQuuTggZcTE6mqqT+n
	 uQRQUAyoO89ApPOfavo0oYspI9BkUUIj3/ElVqz/qqbJyuzyMtSvRrYsmmdHQi2KxJ
	 GpNbVWbxUjLZ7Ht85rgfMz37ok5uyy1bWPpiF1dmZJsYZspnWx6OvZQ4RzIErfKSZf
	 zKFxzA4Hpt1cvLCxK3ZHDbjbLq5qN4xP2jVFgmTRNVskB0LUMe/zdl0/oozFyH28K8
	 ftlPEmx2aFKqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA487C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817103368.31632.6119306754156914706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c511a28c77acd4cc7e8202f6779b8d58a11be8c6fed64c93fb91d9eccc08cb
Date: Mon, 31 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788171033
