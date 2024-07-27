Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDB32629D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722111954; cv=none; b=UUhR3i+VI6OlNrOwBF3i74LtsxwhIC4ZW7to+ssSS8GqBSvlT9HXdUqPtMZZlD9gfelpRkClmy2GlRjt9LXgxKZmPnjrlQXuC6GY1wjn5JO6Jfv8LTdIhpRXE5WZ41RTRLP1bpLHXxyktrEvSv2WyTOxNauqbXGSHRxAzTZ6AhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722111954; c=relaxed/simple;
	bh=OEDltX5l2C+LpfL7by4b8kYoc3IdTyQ8eiFZ25OjlmQ=;
	h=To:Subject:From:Message-Id:Date; b=dwo9hdGgzZh7tJmQq9E/P4L0dJi1gex8giOo/84HdVXa1bynVaBjGZ12tG06TWDIALGxduJvpto0b3UGwH9YqB9514U/hp8Khc5OFxGxoTK7n/YJ9rH2o/7eDm9znOtEFsX6hBh7Su5zyjaLQptshzhHVcz2P+N6C0UMfsrHxPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJ0KpjFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJ0KpjFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DDDC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722111953;
	bh=OEDltX5l2C+LpfL7by4b8kYoc3IdTyQ8eiFZ25OjlmQ=;
	h=To:Subject:From:Date:From;
	b=cJ0KpjFVtKvHXNCVqpZUYtA/plRA24CaQx+8cl3guizRT3R/T4eAT5pUoWCzcm+JD
	 JHisxxuVYNpLZ0MaWAtNMJdJaENq3D6rIq+moGbhTdk/X8xL+8xWcni6MKw+rrDVn2
	 vBH/GRE93ge8TksiF/t2sDZSKlJcSUp17O5S45dmLzAgl9fmksvQh/u81wHgPjn0et
	 WyBOYVC4a7QkPLg0zaVlxLfuamT7DqjSlZopA2GSQaRp3433OFNCty6BuaSIQv26bO
	 dsdFVeC0YTwfU25PXUBljxnhRBJd3UOOj3PmDG8yJv01BvQSDaBL+pAdZ1R9CEhfKQ
	 O7E9jJv9RIa7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EAAC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211195359.24194.14759848296848829869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d546c6f5d3fd258c1dd5213cec705728c9602a588e87d980f8e6d3d7aab2a59
Date: Sat, 27 Jul 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722111953
