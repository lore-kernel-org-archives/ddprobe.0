Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2746128850E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776490054; cv=none; b=aHmhz5xqVCa/kQDtT3jDb4BdSiUE8u70EPHI4D8Z8bDPRgzoIFK9I89dGqAjCRRKMgZ/wfA7PkK5W2mQixFJ5uUkrDNadJhzCw7okYiGNYszvvANYpGoXXBnra6ctwI3BP40SafzQOigqMHRcbDNwMOcvL8zAEB5ka18qm16y4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776490054; c=relaxed/simple;
	bh=5dbKR3LPRUPXiTgBKqAYSjt76ZdXZRVbSpKTYalnRFA=;
	h=To:Subject:From:Message-Id:Date; b=tyXkYOXu4RhfyyGQgMgFL9TH/Q6WDjwRHJ8w2y3HEU+Qo+MZY7SEbW0JYnZWnbxxyf3YfOtSQK6/HsQNFLIjwsNQSD5gJcFJeoCNTAKx0iOHo5jibh35EW+af2i5DJ1pVxQ3DZNRkJhzMydzNOSeucnXmIFOb42zT66J5ImlnXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DADU/bpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DADU/bpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0CFC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776490053;
	bh=5dbKR3LPRUPXiTgBKqAYSjt76ZdXZRVbSpKTYalnRFA=;
	h=To:Subject:From:Date:From;
	b=DADU/bpTsKduHk2BPqujv5AVRU22I7bY4SprEVGgimsfDOvyfodcdqymOzBFiELVE
	 eZGe8AFEHBp0mjYf56amE1nAZ509IwkDAZGu1PUTGQhdAtm9LoTPbzKd4cQeiZKuZI
	 ojlyT0DttLm3WLb7HWSs7brdXidLiUCa1TsWOzO6EgqAACJcxslT5DLcwR6p3PfXwW
	 aHpM1rQ8zwF4iccmhz75cyNh3Nl5cTNU+F0OYMW0NqITbBqVNSYSW3Tg4E21MxYoPQ
	 m0GVOTu38QL9tKpHSSzdhJrU8TbIzI6+FjVSTEXHA+eYCQVj9NNSdbA7IbIuuaLzpz
	 hL3DaG4gkpVJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE83F436BF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649005368.11042.18302938923698729404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bfa7bb9741317b0210d0d30e4dbd43296287de096437a1c09321d7643223eb
Date: Sat, 18 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776490053
