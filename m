Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2967638643B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522694; cv=none; b=crvvBLtwqXlfjY6AdkjBI/saJI7+7C9IFJGYc2BAo4ZMdLj5twCvDRpi6G7HnjwZyaqra0YC+gL029u6KD56wuUatasUBj59ThFZ719mK7/B+ohwlq7/86QGn/+9tuSzkfzxz8UNYTLVFcdY7NRa03XbrWFVc1tssZ5UZNPVM/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522694; c=relaxed/simple;
	bh=b33+xMhSxFZSG9y1DjXCiuPs0JIbe2xZXVQnCkrLe+8=;
	h=To:Subject:From:Message-Id:Date; b=szFSdLNJq5dIqe6WjJvtw0TPamsnW8ozltiEm+BAbl+8DttLExcvm61vIyus61gBbOzd/7cOsj0u4/V44+fn/CCB42/GNzXgKAZPG9IxckVi0iLEwSibgBU0OBk+QBac65sJ9aGpHhpT5yI0B1XuuKJd2p3l0Gg+IZo6GorE5QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7is3tbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7is3tbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB71C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522693;
	bh=b33+xMhSxFZSG9y1DjXCiuPs0JIbe2xZXVQnCkrLe+8=;
	h=To:Subject:From:Date:From;
	b=e7is3tbzci7O+og4u+6EgqITbVGSA6HBvKykWZvJFu+AowuIMPJXovX8SpTGL/XrS
	 dgq9t2PJnje9yGRBouv5yoPMEAyL0j5Z4av1lBaqOoQrRM8ltpLmV1VsKEVqp+0cev
	 jBX8P3jFQPZ539+E/LTVoetXIvzAyBJ5Nmt3vbACGlhKda6Hl0Nb9zvQzo35m9CAd3
	 28D/3EaZfTwMvw9WEF+pkFAYeAKKsHcYbbeo4qjFWOw3oCbkjxllznNdMApYv1Di0i
	 631GNyhc3KPAjyryUH7LG/owqhjtjME6upr7BbJm28HE9TdWdG6NL+qQSkB8860wZM
	 dGY9ndVbZ7u5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9810FE67A71
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252269361.23057.3572133178289987759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318e942bf634c8e28963fdeceedc19238b3cf6ff5f3f0823d628e19903cb034b
Date: Tue, 03 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772522693
