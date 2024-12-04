Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240BF183CD6
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733290554; cv=none; b=LvGMkUdt0arphxqHWofBgc0SgJd3lQSejutspdcnxbMYIk4llCyXHuLobJ4pcMn7ZtWY1AzTNS0Sjc/AkhGf3SG7dkVB4zqVNtBG0/N/IP7QnurcN8AssS82mFA7JuLk8bQs+b70a8FD7y4e/yOJHT084vdD9GkeabujVO0Rsuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733290554; c=relaxed/simple;
	bh=M/btV1P8wqNYged3E0lnYjGrt+C76LfEFSsVsyNxU38=;
	h=To:Subject:From:Message-Id:Date; b=fNG21QzRgqIRyPB45Qi8aLPSe662NPFAvaFe+LpRwG+zzgViSi5kSGZuA/zXvIDzrhl9ZLBKj/ZFPzdX61+2qwbTIjAGVKPpJXzG/3oVF2iRDung5p6CUTaxHlM3T78HsMXQ4aF0kZS+5UgpxU8yD2eQmi+hRab6J3dLa3h5Bds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqFYblyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqFYblyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB226C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733290553;
	bh=M/btV1P8wqNYged3E0lnYjGrt+C76LfEFSsVsyNxU38=;
	h=To:Subject:From:Date:From;
	b=kqFYblycGRWIadjmJqV6++b4MmXdedEe0oV5+8wk5yymbQdlyqZJoUbggmvnJeTPg
	 brPBgnKbGyZqPD6vndShDjYN9K5wiwzsxsLvEfRAw2COKE7keanbZR7QijwdWs3l+x
	 usT9ehmtNVwZGgUjTauV51gS1aNjZ29alndV0fgi3tsJmlTg/nEBW2XUT1nImg+4/Q
	 mnk4eGPu1dG3qdh4JVeTaLgapOo9ulzHlcbMvSU8UnfLfJBaQ2vtr2LZQee4fAcVsz
	 rGoK365/U0YAEAc0WwddGqjR4KX7hPRkfaAJ3Q0qbg0K2V8cRswbCNKDfMAbTezEIK
	 IeUTkug7b6Ttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F62E7716F
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173329055360.4497.873474085294653478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e22172759bb38c02a351c45394c4344777bbd1a42101abe6e9a9d6f35334d69
Date: Wed, 04 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733290553
