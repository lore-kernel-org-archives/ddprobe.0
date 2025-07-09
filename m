Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D2E2C2AA5
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752061194; cv=none; b=AswPB8xkfdiuM/6yTmq1u5QLtonVETPYYN1oALoLRr04OP6uZhwa+0ilKNoIHg49gR6K7l2bJaccTcFWoGyu5kcUsndxIR+74K4TXgnsjdsLb04m96K41HdLxOydnnreCMuOyaQPuKjhU5bGCq5Dt+lnh61SHQlytdylkYteEvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752061194; c=relaxed/simple;
	bh=O3RhA6Cqed9qNIZyW069+JoM3WFWk/dpdl4SGvmg6no=;
	h=To:Subject:From:Message-Id:Date; b=G7N03sMBsh8kNEpHk9XNMRQScFZHw9zpM94Ya86bYhzUE5tR2wvWlte9PTVzq0pm04t1qrdJ2GRv9ZVp2Vvek7FimjzznmSKquZkw7qmbtJsMI8Pv4ZQ0BQsIxKsqZiQXi9WiUibIVnVploR8h/eHkYkKDP3aY48J1fimDeUqS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr4j/7dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr4j/7dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A67C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752061193;
	bh=O3RhA6Cqed9qNIZyW069+JoM3WFWk/dpdl4SGvmg6no=;
	h=To:Subject:From:Date:From;
	b=Xr4j/7dwevRbWsfswuWVMRFFCjOLCcq4lLCs6YHPQEw7GEWx2Tb9MOCFVy/u7LFxb
	 XJzutAuJUev45Qcd9tPEHNO0SiN0HQ//W0mEwWmjqWzIVmwSPh+eaXxjN3LnHrfwQN
	 5cvkWIuSsiudamB8xW89J0ELO5rcgVobEVhkTS7coy8L9ZiQmpLak+Csmm3cUTPAfd
	 stElpTFmVnjT9tAzgfHLic69cHwI2ddP1W8KiooYdrEI/zkBM3m9sbmLusEVfVzK47
	 kVdkXAP2/sluSXlt6GIu3hzvB5XyIFqKPminaRVdqUnQDfv+R1Yyb1yrd/99wwVnOb
	 m+5Hm8CS0NJVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4C5C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206119357.19469.17366378639541888234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66c48cb72c9fa8ac8e875a6fd8281fbae9a5d1f3b0df8373888db2b56786848
Date: Wed, 09 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752061193
