Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B81C57870
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713867023; cv=none; b=BAOwCqVEGMU+/4oYlQW1Z9oKSOggrFNe2EfU8vQU35oE4WQsz3AaH+kDJXvPrsgCddW03hfAVIb3MosOT6AjsXHaK/TWFdYxLOgdoQP7A838Us/vxXiSsKpuNthklIoeH+YSf31NZ2xx9ipRM4Er71X+/Bj3lKLq+7fmv1ksnf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713867023; c=relaxed/simple;
	bh=tPxLM3itK5I4GdLohkKgBppNUr7Y+F0oYyysIocWRPQ=;
	h=To:Subject:From:Message-Id:Date; b=b2jr49YcLkyKB+y7X9ANy/4R6bOsKl+RaPjEL+PozarUnxnRUWIKdVcRUtnixWfJGkedauX1n5CEA/dbOuGtZpYUFqnmK9Fbr+Won3JPtX+2JTA28On4cRpFWwI0Hpkq7pA+EbX2SwQs11tiII8CrwTU7ETKeESd8zG49ub8mrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imJ5YHM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imJ5YHM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F2AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713867022;
	bh=tPxLM3itK5I4GdLohkKgBppNUr7Y+F0oYyysIocWRPQ=;
	h=To:Subject:From:Date:From;
	b=imJ5YHM1kgBP+pV3iKyDyWSSdEKBDOyU2qbMtkBvf1H6NYqTCv9DCGh0sYb0yY/jJ
	 xZPh3TXvwZ+U9E4YkUlAehIr/ZtLSuX+ZGypunkwiTEmo7D2H+C5fGIM4KLfF93IwL
	 9BxlbWQHyiGxRJlt1F7VxSObrstvon++UBxEpJHN4sTI2eC1H+pbgjfa0ybzGw0aPz
	 IY9o50gEzvUFFQQgmjygv2+LbOZ2Fy2gbQ0ywUPLXgrisMBs+qnFI9xQ5W82247CdZ
	 aXwA4WjX4MqgpF38T0GFqIsS3GVRU0y+jWdoQztUQNljL8DQfJRLu9pyFmEi14B4v8
	 aBxX92FipA2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4586C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171386702278.11990.13658451481047247906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5179af42352aacdea49892985548bb35ad0b6ef672e055ab330ce4b1d84d7431
Date: Tue, 23 Apr 2024 10:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713867022
