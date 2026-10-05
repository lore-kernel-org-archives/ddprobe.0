Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD37356747
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791195034; cv=none; b=aZQ+mfV285kOMsgYwKbzF42NZeE5U4pKmjjQmwyQ/+0zfWWrpdm452me0Koi5JkaANfkaiAIPQ4ito8eSWwMLkOqcOh51JBYWvt1D/OgBJ1YLExINnxBkWiNwMnWsI6aa2QEsnx2hjMKiC8lbvYIGS0MSPl97gClEqPdsh9jIn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791195034; c=relaxed/simple;
	bh=d6wiF9OoDRUUkDmc/LeJavwrDXea7C22HC8nS8Uuh8M=;
	h=To:Subject:From:Message-Id:Date; b=fqovhu0CGnfUkxwZ84xfbgLzZHIAbZviN1m8im1cf2PSsfUyCjIskOOK/exZC7UZS4UDHYAjWm6xLTU2J9r3z++7XtFVwIYLKPxtT6sHvourxfh2RcbDa8kGZozVa03JCyRq2+G6Av8GERFXCNA/oXPoq/n8zK1Rm2OF8JVVW/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE5HU8ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE5HU8ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAAEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791195033;
	bh=d6wiF9OoDRUUkDmc/LeJavwrDXea7C22HC8nS8Uuh8M=;
	h=To:Subject:From:Date:From;
	b=kE5HU8olIusncdkbK1zUJEpWyUZkXov0j0V9Cwdupr6/VgEBIoJCgg4q+rb+oQFge
	 1YmpDgsneurAZkzryCGhxIODSZV6Q45E64nxPh1m7Lrn3t/zIgmTxUlSIVvftK9fFQ
	 Sr1bdCZQ0uPOKfndT8avdFTtF4H/aZDrDlOZWoYczVcGkozQoWR4n9AXvWU4c5k11N
	 Flkbn43PFl33FFDgfS0IDKBjbAlOfC9DDzVCKfBTLFDKzHGBkn9bW7E0I+FY0Ggifi
	 abZ0X4tn3kxqvXkErnKWqiAnCksQ/IqTMlLhoF7BTuv6KjPJgDxvrKyaJb2VxyqO80
	 J1NZ7+orTEcoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5AFCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119503368.728.12800049402009263929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5b73c39307f3f309f28b3d8c5f784031b6715eba32978f81a9ebfd65c174fe
Date: Mon, 05 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791195033
