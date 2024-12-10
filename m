Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3221622B8D9
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733810754; cv=none; b=e91NbuLfvIkex8FvForZbg31PakM0+z3Pk7KQzZAQNkkhntUDZ1LZidtzSgONftJtsl2ac/6fFqCS5vsDyKE2jo8/xayrTONFR9Fukp1KVglKOzHhMQ9kvt0w5FLTQdBRcMlSPGqskBrUU2nC9Wd7HHnyh5M/gSNgt/EJKPy/iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733810754; c=relaxed/simple;
	bh=Tjkunm7yqDBFnIS2uYoQfZUqQ/zwXfe3QYg/2gx2RCw=;
	h=To:Subject:From:Message-Id:Date; b=n6PraHmY/f6Hwe4BRo6r6omGSgm+8HEu+eMrEnSq97D4Cag8aLK0GJxtxxsKBfKxJsEJySQu3RiGAfMEs7hzhDmv11SFbFHHmzF49kaftDGfh6jqTiEE90gu3vTGVqWsAZdtpu5ziTK3vP+iGMhF1h2HuC/7ppMtfEbuUxFHQ/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhcGOZW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhcGOZW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC95EC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733810753;
	bh=Tjkunm7yqDBFnIS2uYoQfZUqQ/zwXfe3QYg/2gx2RCw=;
	h=To:Subject:From:Date:From;
	b=rhcGOZW9JSMPT+fezKWanQLvsuzsV05KesboRAuhCt0eQ5SJTPmYkAuyAxHdiB7tf
	 1Ws+v2/3KdswKkBxlFHG7r8yMvhiGQ8c1SUqYcQZy/M5fMSvU+wNylR/sj4AN/WIKK
	 P14oHxFvXSKYsZzzDv0gwD1udA08Og0RLNyRk0owltSDxb4zVvViiM9WNJelBZtEmx
	 ZQWtgBgWUtT7UG9UptOH5v3+wlvz3EqpAAkSHs6zdcNq8meMv44tidmLLvpBSOknyV
	 Sv1quldVxJSbH3cff/w66YQQWGvud0YQ8xx6A0AHD6h6qorAAuEogC/YYng3MB8KFF
	 19vKVv4L3LcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DADE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173381075359.16755.6144484380022281098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711f993517833849fabdd43e375edbfe6e51d3f7710ba20b0e2e1908a3ab9ce3
Date: Tue, 10 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733810753
