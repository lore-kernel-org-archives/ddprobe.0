Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281A922A4F8
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756581594; cv=none; b=lETRqwtJULYVAsvDgzLVaiuNIybSuLbKy6bCXRMjgkLOeu9Oxqbd7zCY5Id3BugXZqOj0R6gx8nOXNGmy1Hurp6AV+oPrNJVQ8lloRgusXkPnhnsnWz59rd1S7tv2tsjaRt48JyG9eOO/Lu7eVyvTYBq6hSAtpfPiXWigLLUKk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756581594; c=relaxed/simple;
	bh=V3i3M0XJtquyBNl7HnQLpZcb/VVhVg6Ea+TDkIoU+s8=;
	h=To:Subject:From:Message-Id:Date; b=u8Jyywke+J52G0WzBTFaBnjirJlePLfG28dDp4QQpcDOaNwUK5ckfnLmItpq1cpMNemXkR90EtBGz6+F+jL3X1iduQAug+eXa2+W4FrP0SRvPRd9LO9izBubPQUUO0rPX53tiJjKi43oQjzjrxEdhO25WDiteoyXaCwb8VBhhms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJvpQdvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJvpQdvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5638C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756581593;
	bh=V3i3M0XJtquyBNl7HnQLpZcb/VVhVg6Ea+TDkIoU+s8=;
	h=To:Subject:From:Date:From;
	b=rJvpQdvp7J6N3Jcj4zjb2UbGbCMfaMITE/SrilU5UpFF9XqX79J+A5YrovTYFmzWO
	 +3KqVGunWfPlLcPpqL8oipGWc3WW6k6tPLgGF2SrRJS+JafJGKRZt/1gzEgnL4id0F
	 aBJe94+fbPc4undm9CWLY5VW9hwfGHxb0NKwt3SphJx5mg08VnzIJ+9uKcWgT46fih
	 nzxpxlfe+ouYdwV7EAzeLtIqwXetOnpxoIMC/CxxwtfgG9KqjVO+YeJpgKLGGOS6zL
	 Z1b5/Z8d+Oyy8iTkekbPCL+t5gDp2g+mI/zrwsZapfqvn9c/4xXVA2sPJJPbk5vqz2
	 k2GtD1ZFX73kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F8CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658159357.3129.8844260075908101921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7f201a9f9cdc7499fa851375187763bfd20403f021db24d630124c7c4e9765
Date: Sat, 30 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756581593
