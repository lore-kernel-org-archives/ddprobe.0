Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401A626738B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784471314; cv=none; b=PP2RI/55rCgt6sE3jFzudrxZ38sTktGTx7lNqNowUt27rGdjiKO6UZ8gITb5ekGWzi2HjGwO5wFEkRy/tTis2OlIQslk/vuw9h9ISc+Ir+gxxRivJyG3dKYit4NUrFpswO1KOgwupEbPuwM4pKCzQGZXHJgxzJ6V1ghUNIwlcf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784471314; c=relaxed/simple;
	bh=hc97/41wTkA26RGYLFTIt8Syb6zFn5iYPo75CkS0okE=;
	h=To:Subject:From:Message-Id:Date; b=e1imPYViuoylNXnnb2gwP+CfLfZKk3VLw7z3olgRHljm0yN0EBavPUtPqG5qm/np1D2ZFvRhfDEC2EQL8isS0nZdXIb60kR6P8FoE2TMIk3/lQ+Ya+AkhN9cOkmRnZb/4WqxWeLv37TJjUW8yplzc+HiRH8V7lB6PBROtXIREWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C389sGel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C389sGel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1781C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784471313;
	bh=hc97/41wTkA26RGYLFTIt8Syb6zFn5iYPo75CkS0okE=;
	h=To:Subject:From:Date:From;
	b=C389sGel3YDqXeeSrRm/4yUw/j94VH5QDsW/xCkEYLv5ABqbqsNkA/Uow174OpBDQ
	 AHH73q31Y1y6Uj4p4uXeBNiOBwpYVwM0p9LvDUHtHnqlpY/0IJCv062KW1gd5KBlVg
	 SH41jwgGgv5X88tjSmmOdfI948OZhFObKLbKSTw/yp8sf9gKJFHG/zsjFlqEoc8ihE
	 j2mGcyh/wCtZgyY1Y6loEnD6peU+fzktljhrWbR3ZkIBDUt6xdmEnq3A0k5XSwknLn
	 9FXmTg2/T7Fc/Qy3IMLas17XWGFi2e5OD1sV7BF5LQWMaWHWzeo7gDcNJCYq1TtEBb
	 YVU1f0eMQE0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6B7C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447131368.32113.14873308705069610943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d96fa604d30716e7bbe19c3ba4a9857ecd89ff1953d18298bac99ff38685188
Date: Sun, 19 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784471313
