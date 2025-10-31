Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063271A0BD6
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761875994; cv=none; b=ZOOZ20K+UnOa114/gAAt4lhzhPhhyFtebnFMRuSpWqF9t6LKgGi5AeE1fg0AZmObWtu37ZKEtUTgAj7W08DlT6VOLn01bdQSp+Q9B8symQ6ogRXKZzUQHxUFVJv2zYv8tnJvtay/f7l46YfINlF2z0ZC+UdRT9f/dJrhe+7u+Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761875994; c=relaxed/simple;
	bh=ra7Lrug4ToMA5sofgtiySu3k/xQKyho1bpDJU8BZr0c=;
	h=To:Subject:From:Message-Id:Date; b=G8nN+Akvtd3ellHWynB0rsTO72TcVz2Up6kFGSapyXlQWHPNwRgnMmVKuvl13BBhSQ7vAHGC4LZmeBbk5Yl6CTNoS0t1g8jHfJk4OY9Dpt1csIFoxDjWdty8rstasAsrgokcGAyPtFZnDFI+0w3URrW0i3KEjpHRzTP/0UbqfLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0t/jUZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0t/jUZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1389C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761875993;
	bh=ra7Lrug4ToMA5sofgtiySu3k/xQKyho1bpDJU8BZr0c=;
	h=To:Subject:From:Date:From;
	b=k0t/jUZ5rcrTAAQSIVaXQN9RaFhYztfO5Cxq7YEiQAAF5lqPRD54vd7/hClG+kTdI
	 uNErUDxJh8nZNRmY71ZVYMYz7wBq515RjFKNkfnYUFeyVnkOThUPKZiM5IkrDgZ+Fz
	 rdNWiCdQ+KY/aHYT5S9n5A3UUSYi3OqT7l3aZui0vQvf7PMTvccVFiyrxAIq5oP/H4
	 TGXGpQRvqngWbg44AeCNSyjxQHboq+t+UgtseNBiMAvB/ptaKhfhb/iMFjxA8Qgj5v
	 jIKcMTNRoievSml3/TopL4ZdwsRHilH3HQiYhAQhGwvLrOPLk3dZgq0eZD0nm42q4J
	 3D1XY8vrVBqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D07CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187599359.5679.13282147954758376635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9acaeb1ba79532efb0a74ceea7764c7e22024eb02dd981e796031b233fd44ba
Date: Fri, 31 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761875993
