Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430A52701DD
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745455794; cv=none; b=O32f0TPena10UbQjuL+xe7Hf51W+IjYhB10+2Bxv4BdFgCXwlqWtIE3rgBDA8GiG602aS+YIy29p8AlHq/perw7Ej+8fXHThn4rVP0LPVgtlCF7e3LXlIjN5gttqdCyLf1AEMZiItb9GvMTFNGAll/tPN/bHZYaGs5QX+KA+Tvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745455794; c=relaxed/simple;
	bh=bLowhinhD7igHPyjjB6LCUOzFv0zcIXeobroaZ2AGzk=;
	h=To:Subject:From:Message-Id:Date; b=Adk/JKGgnsw7bRYVE/EPCJObWttmKz+RiFWo8dkgeA2JTt2Rzlx9L8OEB8UcrYS+Kjq/Moxvp2av1jRJdEoA0IvT9zDGAtbzVME0NqkU0k66J5hDKg75kw8pN3QTFH09yCHCmbirMyv7WSSGSIkel1xpTJ9jxmo+JcLDcsyMJtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpPXOwrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpPXOwrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5C6C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745455793;
	bh=bLowhinhD7igHPyjjB6LCUOzFv0zcIXeobroaZ2AGzk=;
	h=To:Subject:From:Date:From;
	b=lpPXOwrxH+ruZL6cIkKSogWY2Kl9WvB8EuQUWmgBoT6Vdxyid3gpmm7eAjNo3eQQa
	 5S+Bj5syEIHrJR7/o00JGL8t2ySBwhGRtVFHqIHREHOqXcHYddIJEWuCGA3/LR1hxM
	 Ch6jhcK0cYjhtNE8XTcjqlDdNy1kVBWGUd4bCVyB6JXoQ4HQJG3yYYBPXBDBPty/4g
	 XVxwavUXy5LamcwOw0PoTSgXeTAf3qOCiirxCytMV7nf+NN3BmYkLlm2EeDUox8cWi
	 6K9S+tiiwX6gWYUgtix85+ehu+orsoVENsN05l9/gY2C0WF9Eg2ir3G3P3GvEHAkgq
	 Hon6Ozv+p84sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F188C369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545579357.22783.18227371709830307886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdac0557decef0820845ecc97ba00dd14eac708de4245ebe92ddc0328e209df6
Date: Thu, 24 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745455793
