Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DB728935A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769063634; cv=none; b=UcwvUxeff/4nDHS8D9OKjRjJ4ihRwZ/rfe3Q5TsgrblTLWre09CUuqJix1W0TpPI/55z6come8zDybxZmoRkBSkf4WISd3udl+Mxq/J3H1GwByeCJqMnINg73kyPOE/0/jTdPtPatK+mj//dN4SwfJBB4Fc4ShJzTrWrSszLqZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769063634; c=relaxed/simple;
	bh=Ykw4AGYW+BOeXhxHRJtagRs9g24wgVUl9ggCRjIkeoA=;
	h=To:Subject:From:Message-Id:Date; b=I0gqfBBYkkwjKAD78CjFqfdBxzSZl+q0hHMKuXWr5mqIFfpivbxmXPhF4adIgQbDfP+w7za3s+oJDjORFn/HaCQAxRnzG2oPRlxr8VV/pCJXGrUcqRJMpsSHBtfjFADLlpJKSaanXCiD/TUfDwOGQD1eczbwYcRdiHAH9iqUxlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWdn2WnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWdn2WnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63AFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769063633;
	bh=Ykw4AGYW+BOeXhxHRJtagRs9g24wgVUl9ggCRjIkeoA=;
	h=To:Subject:From:Date:From;
	b=dWdn2WnPZTRhAZRn+AXUwC4rqXXzD4jmm3Oow1e7rSYY2cUs7jeU/ak+/K2g+Uovr
	 LYg32SXxyCv+BZnNC3xwMHg/qH/Y2TI1TceavCyLIpppRfbND12MHCT//MyTU3cOS0
	 6KESHUZ4rzWkiLbQngwrcVcP5a4zr3y++t7Q662SEVKb/E+o+9M16KJb7Evaf9Iqx4
	 OFF5t4beQRFq6UOe1SVT2RyvwFhItXYpf12uG/eNF3CoY7zLH7LSoOWkBdoIs2+AYt
	 JqoTUrlv8tJoTsHsCZPEb6YcqxhfliKrI5VWWWmy2EsQA4CEnda/ynPc41LB/UTZwK
	 Sdy62jMTuGIqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C7AC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906363359.24354.13407496954628481274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f358ba3a750761932ee5c380391d397f5b5a08394726606952cc20dc5eed18a
Date: Thu, 22 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769063633
