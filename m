Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F81C3101A3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762243194; cv=none; b=WC3suEtLd17XqOqET4FY4XwknQve/SJnYee5OGsRnV+im++7jpE2zmxHgnYwmsIEPMAuGAgIddlWlR3NNJg6gkz/1nbcdFpl7TSZoSczn2eXw2YaUAeiITWtUK/0GbWWmcCJBHShf0eixVvp8QiLhS7i9RarVJG6KXD8g6kYiNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762243194; c=relaxed/simple;
	bh=ZBvlwLuESit6C25TPZCt7A4hDIIz7wqolrBtKbPepoM=;
	h=To:Subject:From:Message-Id:Date; b=Fgvwlp4D0PuNm7DjAxC2JZ3C0fOvpNClV80rEUJSVmN7a87HYHOY5SudZMP2Ov426IYT9738Gd1pbVzTMFoDRn1HJvrKv8gT7dJW0qbEil8sVuaq4yS+We+7fybbwdJzHJ+zhLvbRTgDjYKHdauROUKaRRBUkh8snqcXIne5uPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3WsjuWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3WsjuWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA95CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762243193;
	bh=ZBvlwLuESit6C25TPZCt7A4hDIIz7wqolrBtKbPepoM=;
	h=To:Subject:From:Date:From;
	b=F3WsjuWpY1bVQ/1LOUpOT9adRAyzTgzEqHIWbNZjWssgMsyyp8hsK3FVSkHHhvwg9
	 MOiUPYebMENZOjXvbffNcgfWOnzCiIfmqV2TDMI7FYcVeAvkk8nBqXkrfePZDHaICy
	 4t8BUxcKJzsBfGvRe/URtG8jOseQ6z0iQooyKoy7i++TCUmZ6rx651jj1ycd1gbeUf
	 VzQCWhJsR5+agLuuE2FnrNNMQsaLmTMZ2L371qo291TlV2uJDxih6pcbzqkWRoEQ3j
	 gvbI3BJwpsUuGKqlwuSRRObZIUOkULzpxv/FerhNTUIKWGxZbzMHlZJHwPuXjdoaU3
	 VHl3ymwXAC3fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB3CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224319358.16269.11069185647813672386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353dd45b582b355504ce34108ea5c7ada4c2fedb5d68d14c85ba4f79d4389390
Date: Tue, 04 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762243193
