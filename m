Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2981422ACEF
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765660374; cv=none; b=eDDi46wAFQCC/GKzvxWro6enHOfB37GeCo2kq61OhAfBsahV999938lDykduGd3IrF4mC/Rtrqh5M1eUgJJF1dQsX3ziIe62FhlqItv4KNbdTCrFeifoViKt4JAeK9RVC6br3j0pao8OJoTLIxYnyXJpuxzFWHvS92KVtRW+WNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765660374; c=relaxed/simple;
	bh=uQ3OHamx7nNkCANNt+gf3rc4Bvh/RpXzqIfFP5FzeS0=;
	h=To:Subject:From:Message-Id:Date; b=q970e9bwWmrkeHlLiaF+zJn5NnfHqin10UOy8PH3dlSOvpidPdCzQI24+ZmDUT2WveeAhiLSHVX+y82gFOFZZLCSg4HsE517MPTNyLSlV7QdEoSb8iPbZP9b59Qmzgx8/8UhvwIJvzFalLZRNOYMRlnGwkhQ/Cu2Ngbdtj++9nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lof+Ls18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lof+Ls18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32D1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765660373;
	bh=uQ3OHamx7nNkCANNt+gf3rc4Bvh/RpXzqIfFP5FzeS0=;
	h=To:Subject:From:Date:From;
	b=lof+Ls18/2wC0QwxG4QnRYaZa2YgQQLbRRjl0w4ggnxG+vglD0unXFhi1GAuuXBCN
	 5+h1sw5kLI1nKpWMW7Vby3kDGprs/rlvGBRlzu6oK57G6Jiq4WjsOz8xu18f5t9TmE
	 ypYxq1a5v2aOZvfcShLPQK7j0O98r6xT43uTyuPs8wTiz+74iUzUnbLs4wAVufiCn9
	 0aigJQahYF2iwylvR5SbpR86w6WPhe/R9a28iNZFowjp941KoIJ7xUBzBkF9+pz6Bj
	 6SFaGODS20MvZniOIvZWGDBTlgJii0M/prYfrDZYYCRXJTXU5G+6Y9bBqKnk/0BAmW
	 R9pfdwbWhPijw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9616ED5B169
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566037358.17189.3081579209384664133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82af74d61df3c861301e0f417bf6ebff0dba55afd53ec371bd082d2b5b502ea2
Date: Sat, 13 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765660373
