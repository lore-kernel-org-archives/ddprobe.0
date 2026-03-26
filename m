Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14033CC9F3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774519494; cv=none; b=p6xjG6V+sd2PlLoCbdEUmQ6VNetXGDWlRk9F+wWjfBLT5aE+JhR4H0R6uumCc47n/Nl6+qAKldMTGxCvaXr6b1QUcc1vskSjk8UGh8LWH62fPQjbXKcF0FOKlDbdcXhm2WW3S8NXBAI5lK9qnnwvm4H6BXcu1x09r7mgaTXi6Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774519494; c=relaxed/simple;
	bh=+CsDKBXbVSWrXVuLLGGXyM3ov85XVfXWZomvDRYo2BI=;
	h=To:Subject:From:Message-Id:Date; b=LhKOSSPzMk/2USca8pv6BFML/iYSTDWbeTyahKCRaGMOAl0jkoOu5TukJGVZVF+MROzOlg4phE98U3q93FD9UYj86SUG7VO4K12oc5uPZdaosc6Uez4B4wROd3Psj53APOMF8ABLc4zEC/mqZ75m4/daCrKphb+7xjZ3A44IASE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbQowKsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbQowKsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC8C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774519493;
	bh=+CsDKBXbVSWrXVuLLGGXyM3ov85XVfXWZomvDRYo2BI=;
	h=To:Subject:From:Date:From;
	b=DbQowKsINEiJskHj6E0nRF1OsvKLUkPha9o3WkTQcLIhVrSiJH3DguFdP1p0HNFUh
	 9QVXXQsJo1X+Bv25VMOIuyZtkLaEz3LzkazLTGtBFYzN8FYAPRiB3UNQWZo/eCdWj7
	 TWDIxxGULLXf/TX77eD+jJr58ypKNxQW8JSGhlbVQv4OUKu2tcZOYzT3pkGzub/0oy
	 r04QkrHJDPkORwKev+a3pHVgb4JVUrmEnGnHNtmcSRauAKkNywRyMvZnoKT1uz80k/
	 B8DNN2nY0aTw9ur10MZ1tGaxMrKAOweH+BnJcbL6Toazo8UD4rWF5P1AESpn92x+bk
	 rFfL9nrdYw5+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C1106F30F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451949358.27133.7488098206757075707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04023022ed51a529661b1fc21e915272afe63d7806e4cca1248ed191ab24d4d8
Date: Thu, 26 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774519493
