Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480FB12FF69
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746287394; cv=none; b=qb5cnoikBR+DlvDZJ483sQA6HUDA4hYbCVOwjnJ/Y+9CDCMz/T86C9IjxUq5GsASy7nKHyuhF2H1IoeW26aASa7CJUBYTWTEQLP9UENUSzACKC3RzfB/7NIGfqeFkVhhsbBAJM1T+ZyGrFn0roixnltpzdSd1ik/mUTODbHuZ0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746287394; c=relaxed/simple;
	bh=/RYzwyGQy2ay8QX489iKYLohuoKG7ublUtMG/GtDSR8=;
	h=To:Subject:From:Message-Id:Date; b=V6oBqVge05/uDqsy9Oo8jcjti3V+yFDKx3EmcGqSh8spmWhend+GVGCRrefya+ic7k7wGu8C9ni9SH8a3rx30/E5m76RoDvIVxJrF9YEHEUrzNtqmPvpk6++X8wqqpm5wr6VufjT/gRPdzmfXCj9I2j20jqQ4SB8X3oAfvVXHP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B90K4mBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B90K4mBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746287393;
	bh=/RYzwyGQy2ay8QX489iKYLohuoKG7ublUtMG/GtDSR8=;
	h=To:Subject:From:Date:From;
	b=B90K4mBsTL4sr9VhfoN81694m+1BPqeSN/j/Z3Bh3MFsNDVkrDPTRQyjwFJDd9PGb
	 2+wYIFtDVKJRI5lnOcfMrnJknw29KJEJxgpcuD8cwQgQ/JPTWGJqW7NL880a6h2M/M
	 ikD2VzDF7xKZ7SDHq+j/elMRwcs/mw7KmQQlD/xU1WaTG+/97ZCuhXO0c3mrfw5/zB
	 iKsIv7rye17cFuF1aRzMkQJAicqR4avektqDo5q9rL9DABQzOMPmYfTxAlfmKn4OPq
	 D38mvB7LnJg4fxl7CJDB0bLc4pHGkt+TFY5fkwqtOiWd/31J2GPCtNFys4uxhZq8YL
	 lxvYbbI9R5Rxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B78C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628739357.27840.13819993751161798154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0efd6dc72b78b3ca59417051609302a04c269c7d1b522c625c5bb467888984f
Date: Sat, 03 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746287393
