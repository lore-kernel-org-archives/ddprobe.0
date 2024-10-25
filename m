Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371DC18C039
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729881354; cv=none; b=p00Etuvs4n7H3tKEdEUL1BlfCxmeGW9B8XV1OHCmFCtEmtO0T/b9sr3mfKV6Wd7DkBYaJRyrrTI1uIwyz2pE2f7iNGXjoRygcUFWsS3tJvSsziUwB8wc7rFJ4mmbNtVrNNTU56QCZe0Wsp4WpF47UzEY8tTSo0Ag3KKC7l7r088=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729881354; c=relaxed/simple;
	bh=zUxhOVSNG6rhTd+7LSzRw1xcuKBvXUvionDXS/D/Y34=;
	h=To:Subject:From:Message-Id:Date; b=L/kZ+wCPS7w3vb4K++J9qhdEnw1esxwf9luORy9R/Kbx/B9KCW5mGTr1agsWeL78EMthjyIxGoPCf5lIG/hgMhkkSXiw6V/eZFIWhgudRjT+8avGulnqItiz4eM8+TfV6OnLIEAq/wGY4kAr4GUL7tz9oqKOOCEwOvDs/dQcFyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GS1Urxc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GS1Urxc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A823FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729881353;
	bh=zUxhOVSNG6rhTd+7LSzRw1xcuKBvXUvionDXS/D/Y34=;
	h=To:Subject:From:Date:From;
	b=GS1Urxc4nhGdnyctr61RGX+ikzT3SNeTFAJ9hQY51tWg6VH9tqzqOP0d94iyORW8B
	 IkQFGmE3jaOcypH24Gu3VsW3nBFhz/oS2M9g9XwYfOVE05Ywv7tRqozeDjQjk9ZJ3A
	 cnWvrvwSD+Z6GCkZE8jFqk/jNtkOmW1GB1bfIYjkQsLc9sG0PfTJeTseOMZgW95V2f
	 t1xNU9WprvbJw+1OHnh9e5QQYokAphKk7nXIaE1bCj9PSRual/388a/d0RyWHov8fJ
	 3bhDBDRsii/whsZMR4ZD9eVCbRw5SUkfTrsmZcuEkIv+VXfFptY3jWoE1nlQM6bac6
	 gVx1R9NVArMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95560D149E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988135360.26802.161722471886098857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337898a87241cd52c56fa1e710a1fb67806b843a5462bfca55ba94187dc51f4d
Date: Fri, 25 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729881353
