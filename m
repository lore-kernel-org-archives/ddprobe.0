Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95847E0E8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778761833; cv=none; b=u+R7dcNLS0bVygicDFlw6DrUi+ScK7RCQlXK9nuaJcfO8EhKydb6jpUYKx4woOt75C8PWku1rctg3UOHSrVa9vA4JjQ9BOKTFImTpI66WOCLGRObB6rR7x+UEGPa10rl3KVIb6umM0dljhvU/ZvnPlZCbGsVCnjZH0UiH5D+s04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778761833; c=relaxed/simple;
	bh=p9O/por2//dD83I8D+2xSXqkyHazkeMNV4kIWxUzDXs=;
	h=To:Subject:From:Message-Id:Date; b=gf9ziaqfZIVginCC4Mli8ILwhzE5VDYj+Zr7d/8d4kRxAhM27WLKejDb9NGAWzfvxVipF0UH7UTK4ji1BcBA6/NyrioEE75CPygfy2mD7I/5dP4ekTyfLQHHFpiHwokmJJ3idx9784ALqQgGhfYce4Xo5IVTsON4fNgetiE3z8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6wPoSnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6wPoSnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBB5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778761833;
	bh=p9O/por2//dD83I8D+2xSXqkyHazkeMNV4kIWxUzDXs=;
	h=To:Subject:From:Date:From;
	b=e6wPoSnCaXWLmwnJf0mInlCiLnpsKeQ+ZF7Uq2U1aBd4bDplla1LFJOcZJJhD1xG6
	 czQegU4HDsZ8gF35v0GEh2hpmjZ2LO+8UXikULUK9HETSVB5QdygBaTslWRdOYAmRX
	 WZs6iYdb4rRGGg0tSPjz8KOg0mujGdIe3M/XyynRCdCghb2IF9DMr7YnIhK5eBOiHm
	 +nuqJkeh1YIOpYXdcQqSk5LIHePHA0QqB2hNkUlg1BzMh2n2/7N6CaMPN5bIz/jm6+
	 FK2H4fSmPdyz2jtktkco3vrNnvCSiL41bZA371gQ4ZOsz6tyMgyC+552LhaaesdqHf
	 gF8l+IPJWx57A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF37CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876183369.17428.3114094724581325828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b1b3161b64277ceba9dc552e60926852a5eaa692430421f25f7e697258fdb6
Date: Thu, 14 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778761833
