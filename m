Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F5A1DED65
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728392754; cv=none; b=r5Ht8WB2hdC4q5V5Q7Yfz8lgW6Va5sMSQjAfeKV6SrgDmoNrA6Ah1xekmujAnne1AmMpQ49dLGYXzuSj12cc94N5NLmGWD9wzObGN8nFe37rsWo2RvH0rOOpgluPrgcCe/+xHHJnslvGoCsuQB3RV9CX7bBHn1dQHEWEhBeg0sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728392754; c=relaxed/simple;
	bh=3vG46IU64t27noIyfu5wOW4VoH6kQ6nj34Q5UeT2Kwo=;
	h=To:Subject:From:Message-Id:Date; b=r3WkNyHdgKCAD/ngUjXeIPgsJ4dcDihdU3pbxJoBwf5c5zFqZoMothBcw14/Xg7B0nEd/0/1GTVPye/28nGkHvhCW1r8rHweXVFHDvskjW9woaODIjpSdCdwzJdj+rOdG5WRjCMzAn8KgeymqBK7OPMnfG5KVYn3TP2dfd5Rq1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABGZ5vTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABGZ5vTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB31C4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728392753;
	bh=3vG46IU64t27noIyfu5wOW4VoH6kQ6nj34Q5UeT2Kwo=;
	h=To:Subject:From:Date:From;
	b=ABGZ5vTPaT0cgpAg/dINGjR5FNtVgeAvkHFnz/f4wFy5hmlfZkThgU5H+UU7zN8hd
	 7/ast6HxZFK8z/NhGvY43l4IZSZ7+/LDTfKUqbFZafeEgJp8QmQlVzShpFYVZM/iu1
	 ClyYG98IlLj2jtZZWgGP2H0RyRTalmmZRw6TJh0oppXDSJzqUG9g3jdFSIFwSUjPqb
	 O9Zk96urzC+KfBh5mA96TXRVwu3x+Fky0z2pCzTQfiQtCspHP5DTnytvD32hWZ6H+S
	 VOpijgun8uQNYuArtx7JaBZPW+nzQwoJloVeI1nA5bwaKSoGuZmB6P5NQ/7WBOe/NI
	 O//DeDsTpWBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DECEF16C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839275358.9322.10747866171395586035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec4f18680daf2adbb0f2bb2181162262ad5803f49e24091e2ff4cb0f07f7673
Date: Tue, 08 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728392753
