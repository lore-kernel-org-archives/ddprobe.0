Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1852DC781
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746076194; cv=none; b=SQEvul3trKtBNi8TLfAC/HOX+MkutVejZvXm9Yk8yuH7CTcpyLHXOHWzN1evkNs6a29y7gvNbhWfCXCSfp15gHJsR2C014U6aon+ypr7lSeemytqz1YvEikinNhA4RFGlWwAOtZoBLRbUyQoLjFPIeMdUVRKVcOCt2C6wwq+NhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746076194; c=relaxed/simple;
	bh=2npcEaCl4pn9M7mbfDgKcCKAuA6bqvpcHl3JrCYuuHY=;
	h=To:Subject:From:Message-Id:Date; b=klYXtEZfL9BrZRJ622P35MgeBDgQ2NWa7NfhEvKEcKgP+PBNBihDZGYo1+5KWPvd/2iYPt+TqBt0DicbNmWr7XRf0nU17QtxumyhEYpKPfo3nTL3BbsyAlAnvaPxgb6GkYWrwe3F3L+w/Xbxs/8H3zpobEgmIMYOob2cmRrWLQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVYZw4YH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVYZw4YH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A36C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746076193;
	bh=2npcEaCl4pn9M7mbfDgKcCKAuA6bqvpcHl3JrCYuuHY=;
	h=To:Subject:From:Date:From;
	b=eVYZw4YHGNheWiXLHHPaQE3tx34wr1KxKi8Zgw8NofzrvI7ig/yGGePTt8/ydLsQv
	 LzhVJyozpEXteUSIWX0RKg8basrRFm0GiherO+iL6RS1E0DvCHEVrbypRTb9wWY89x
	 iOTWX4SC446wVJnPK7waHj+WA+4e6iH3cm/zDJ+SaI2JhAdPJmlq/F/155jXaGUwVo
	 01mpMDnzmNU7Eps3YJsj7leUG4ULvvQfLmuvDDvfZqdBv7gqcjOrkjfYdY6EeqAyj3
	 bzAH3ujOvPRUpXeGLmcYwbgvjyq3wof2PfldAKeeqtF1fAwsKIqSNsRN1XtUcTJ+8w
	 nbVgy6NJmKY4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD65C3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607619367.26460.7194885168986729966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47ed9ee5c6f2cc163a795c53fe648b38febc860cccdec1e6ac17ea2235d017f
Date: Thu, 01 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746076193
