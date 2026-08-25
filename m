Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DF42C11FA
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787695234; cv=none; b=QpEcU0ImwIPvrVBPWB49EmDOAZh33Xs/3zWdGANDVOriYrcWThnl6BurOg/NZJG8SGs8clKYsgCgiwgpzGc23RZKCJXajBJ5pS7MoyS3CePAWt1VladF/wmhQFsE97me5hY3dk86m2tFeCfEEU+jNF2RsD6e9XqyRkiYVYefibM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787695234; c=relaxed/simple;
	bh=Jq1AnaClCKEhgkeAipiYlJqTsX/TKN7YnHtVDpXIkeU=;
	h=To:Subject:From:Message-Id:Date; b=GUGGRg+KeHDydoptxKsMGY9Qz/H2CMoXCcR97L5vbwazCWbMbaAXgTuy+zFBmfwaHM/SQpVKMwcdw6v9P3QFPbRhvjWD7s1QFktRbuakukXUsUG/jySNXTX8Vu4Pl75lpoS/1wG0csGRboGvHDueaO7V7BIZnHx3HRgND/di13k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuqbnIju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuqbnIju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2784C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787695233;
	bh=Jq1AnaClCKEhgkeAipiYlJqTsX/TKN7YnHtVDpXIkeU=;
	h=To:Subject:From:Date:From;
	b=XuqbnIjuhE7SR5zure1anQjUpVv6oonJHAJEDDZdJG5i6g1WJS6qEbtMLHhWWEynx
	 K/aa0z8hUo3eLr7AJLnzwwxF8M2tlKwYZR/FyQZDHHBDjlFc6s7T6phqTQZuqaGi7H
	 rJAuh00gLfYbLRl32mSD0r04CAapQ2uXAIfQVJKdZ7+7/uX5WJP72P0XRVC95gZW71
	 9f8dJ+L8yLG27SESN/lXbl9XMTzxvPO6zGAVzzNNem3TBUw6BewcML1pv+NGavQef/
	 uxWoPrqwF09+VbiM4/k3RQCzBlGffsiX1V7HhI7+YCoF1TrVYbuSQuCtAhdH2DKim1
	 jmfMYOsx4LSTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEBBC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769523369.11257.12811863448913316130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fcbd83291d2d2e9cfc6b198e61b9ed0ac41275218fb744c68bad420f79f377
Date: Tue, 25 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787695233
