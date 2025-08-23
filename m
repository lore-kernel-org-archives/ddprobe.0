Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342B6201278
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755933594; cv=none; b=Ye77f9QWkp4FKrz+6/AjsAkC4S2dUlX3/d7rmSvnrMgKTuVu7lZ378Oi5+cGqqApUUQaFJyXUY+XOoXKfn3b+iw0+vCyQo9TCMaTLgYk5N+cfWi4zcyXuwK0oaAWvUYA8/EfKpSbIFF108AtuPSxJnBU03U2eEVrGgWOjU4Mze4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755933594; c=relaxed/simple;
	bh=IZZS98Z8BSPi/HzPL3Nk75pOhxVfVcUA/ETEZ7flwTk=;
	h=To:Subject:From:Message-Id:Date; b=HoxqI/lD/Pz28WamcNHiSAhf94r5XAgenuFavuh0UEjU2TCwvRotIGpCz50/H9j79yJRQb01CyJjZh1VdPpufV3+vDL0Yjwh9Pxy4Z+dZ+9chq/37JT75YXMmoLx2GkpHE0GLUM7nkYOWOChUG0e+wcORBl2epZRYEiz5//Fce8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+sV35zH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+sV35zH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C41C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755933593;
	bh=IZZS98Z8BSPi/HzPL3Nk75pOhxVfVcUA/ETEZ7flwTk=;
	h=To:Subject:From:Date:From;
	b=k+sV35zHVMSwa3kw0FXTHBVHWhj2yuGA85Q1l/pVcPiGDB3593mmmbdfRpX2rV/sT
	 UptR7QCCGJS3XaCP/h8Sdc8ja5tQsfN2F7qGTVb1wi48T2ufE+M0XW6fG696UqJ3KW
	 FDD7njULoMEIEcevRMCb9dzE5X3xcQnjHmSOMHob3d3TRg/qHjuc94XIhyveyam+ye
	 hElqBcKJYYjH1RZ7nAGHKdGy7DAItG2PSPeoKLsOPuLrD3RAcHRSINLWNNdpVybC2W
	 xc8AyaHZaoffN4Ku0LmTHIFg2ctUEsSgy3LniuescESpMXaVRQhvKZSfNontPCsIN8
	 N6WBte3koS4BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91719CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593359357.15646.12958171085451503682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9044c63aa3de56c9a12cdd80b92de72b67dc42801bb66607368f1cbd602326e6
Date: Sat, 23 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755933593
