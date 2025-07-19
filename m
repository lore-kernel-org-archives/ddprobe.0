Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370303BB48
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752959395; cv=none; b=QypmCya6hHyk+JwScWOPYhCPDkKBiiINFpdZmz0JRFzKC+spK8RLS2z6L7ZvQol1MWu6ExgGfHTwznXjjYWjCFbycxag6UAfEQdj/3FeN78DslAPeE4GWPJ1wS0fqZh6J2Z9AilJdt8G2gLxLJvEuBxJkkax5Z0IrpuMaIJHHxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752959395; c=relaxed/simple;
	bh=CccH3r6ljKY6cwaUh5jQmgui1aN8FL2y4DKHlE6DG9o=;
	h=To:Subject:From:Message-Id:Date; b=qVnEuYMr+8+M12b8uP+uOv+VBffPplvQub7rqrlB5wq+MEVe5JMo7IekY+Q+C/VUEkMq+JysgZV9jeirtKYcPyqmeW38OXlXl/WUPTlxsg351KX4L3Ywv9bQFVFN46sAl7pQkfmdrHM8ehAwjfaCfuKog7/xHP3+QWuJKnNu2fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZu8CSg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZu8CSg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F66C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752959393;
	bh=CccH3r6ljKY6cwaUh5jQmgui1aN8FL2y4DKHlE6DG9o=;
	h=To:Subject:From:Date:From;
	b=FZu8CSg9aH+Og/GwfN1DzliAKYhBYj3JG523uhO31dD3j4ZlFi823XcPp7mE8JnZh
	 s0KzM4JwMhJMhFHcno3Tccc/f/n868jU5lEHaYRadW6D/jTr+pmIKO/HoxPBHG0hPz
	 RDR9QvpMk4ktys9PlHMn+KHrj78pmcDHACSONGp6ttY/HGHwwrvZmzcNd8XfrvGx8u
	 T9xvAiMn2DYU7ne706YWM6H9mF7b8CfyH8xErztI/5mxWxxrqYAYiO5TAmZ6XqF5d9
	 ktSyfmiejUMLg7XUPl/xwQC/0yXo0RarSUDpAUD36qiXvn9+Lx+9Ss0Ig6fuAeNdF3
	 U/4X1FQsQBS1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92265C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295939357.3340.16468192953852815872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f494d3982dce666138a5be3bfc845decce26d77264815b34deb907e3d3778498
Date: Sat, 19 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752959393
