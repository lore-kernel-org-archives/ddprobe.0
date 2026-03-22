Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05299136672
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774191894; cv=none; b=LVa79fkuCjZEroIBej2GLm47qCeBsGecRwi48xyOVOiqiaf91rykyRcHY0SYJ5Q3XC+doU+yoC0VpE6rQBHkHiOhu0rcusNo67RXW7uLZ8/oR79lgExLgV//FA+LMsJgC8sZNyz1DtbrwYEgubT/2OedilgK0xoORbRn+LoGf6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774191894; c=relaxed/simple;
	bh=LnP1qnO42qryAuEOERhDJfqCfF4Bb8vcihiNfoAVpMU=;
	h=To:Subject:From:Message-Id:Date; b=DsMY8uMzgFV2CaWzFs0//UNHz804ujXhMyBtEhAIKAFXzXhd4zV+mc6usZxt7yIBHiTBWov9wxsQHuZEiLpoXqL1H6yf/Hmu7NBZ6mwl7whmEO4Awe/io6d3msyiJaQZWR7/g0i6Jrkt2lku4OkDuKZ5TfJBqeZEY//T84XfRXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abRXhxBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abRXhxBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C7FC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774191893;
	bh=LnP1qnO42qryAuEOERhDJfqCfF4Bb8vcihiNfoAVpMU=;
	h=To:Subject:From:Date:From;
	b=abRXhxBcwygY0GiEAz7eyaTakUUG644daTz1lFj4zUCnkTSS97KjHf7olpCzLIGQF
	 d5GEO6DsgEe6keCZ2sSWLSmCnKXi3vWu+rhT6H+ItaumZob7RzrrLweOpKXTV1TQXF
	 gJrrkO7R45e96HqljvmXL7C8oA8+wY20w+jW2POUjFcCnAda8c7ago5gzHKRm/7MKF
	 IbwwiBd45fcFnS2SuGkzInIaXUc/6i+BFwKu1EoDFsGB4O0HJjpf6gZC4QKM14/M7b
	 VRwFIeV+tDC9Z8KChMC7s/HKVvtGmyua07n1SU3Ge5T/jUHRSAfJtZWp/x0vCj5HKr
	 GlOqiEXxZIsfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A406CFC72AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419189363.5660.9035189358309781023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6c0fb8aef34ecc76a9df46ea291204b1d385db449231c4360fb21c8339c6d7
Date: Sun, 22 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774191893
