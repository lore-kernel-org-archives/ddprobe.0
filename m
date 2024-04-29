Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BDA1836D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714424543; cv=none; b=nQ+wKJLLfiSESm/7EtnZoqsiKc20zMvgSx5AnwluUj/8C5L/8m0mGwgZBtnD9ltTlj7MNiXWvrUJegWsbGcn6ppn2FoFGir1TH+GzO5DwQ/p7wvfw7twC3prW8j6A81kxDmgTbZcCzljvpBZOLoyyMH8jA/uXHAxdVzh8TO2PWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714424543; c=relaxed/simple;
	bh=YBo0Q9OZvHFkvrAAX+CAeqVhMxSkOKFohdMUtStKK9s=;
	h=To:Subject:From:Message-Id:Date; b=YmnRKYoqdBfhDOAwteUWJk44IKXJ/bscbzCYswWjKshL/RC5l1oXQhU9bb1HO6mmbBNqtqfSvgZiWaSvEuKKwNDGkArPavhBU5jUkUOgiXvhNCJDzSP7NnkTXuJtELPssa6e0PHdcmoxab+KglM3CNYf+mNQu8AQTD/93VbAgtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iViwC/7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iViwC/7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78A9C4AF1D
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714424542;
	bh=YBo0Q9OZvHFkvrAAX+CAeqVhMxSkOKFohdMUtStKK9s=;
	h=To:Subject:From:Date:From;
	b=iViwC/7N/IKpdhAXq2th9b/vwb4gsuWK/e98rrUl88b00UqPMe5tjxwKawLqx/oor
	 LBHXPN9yClHtGg8rVOuB/oipVT3HfROv1yc4dKRs2uyNihpHzny3iOzfUGCmSf6RCj
	 23Xf95FpGKp7VQvly3J47f0PkOaO2VUYzLTB18ZvIi4r750cD1plA2Hkkb+OieRnb2
	 MueUMMp2/F0plzycVj5aRwLF65TfQMPfDpmJVlOBW9k9VUPlDdljy7OkBSpnHjVPnA
	 ctkYZnJkl7qfK6DafE13xGiyRlrXKhyks5dKwobXqJGYfjNAb+KMJI9tMt5pFRpzND
	 K+fKDN8sWFTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6800C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171442454280.32271.7482712458098754615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff209f290df048a17de2f5fe9b0be37600b7f9a668f556474f7be041a3fd0c5
Date: Mon, 29 Apr 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714424542
