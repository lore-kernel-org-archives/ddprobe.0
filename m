Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171EA1F4169
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755827994; cv=none; b=Oor4FG5e6xc/hGF5wH6rWLnJDg8nKl1puPwx1/uG8yQ3w7NGjSUqnisO5s4wmB9DGhuXWw064P385JK6IZKFzZ5n+LO59WFy9azLcyrjpaZyT+LLlo6S76jPqfGqxB3iGjxGibFAXqCj7/ZdxK0wsoU+h7AvTZY8id23lMCxR7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755827994; c=relaxed/simple;
	bh=UwleNSBIklAgIIko4z9PnEg4tmx4DQXWftOMbeSkijI=;
	h=To:Subject:From:Message-Id:Date; b=pQv+ItDhG1n3rPK0lFMMCPe6PXqLVjBDRFmi5Y0HQPySV6Xay789d5x/VQgP+iqbTHt6Fhxjj/Uz3/PyYV2OXBcWIUGjPZ8lpHTlUH4q+pHgxPKIxQHimn0ue8e3zuE2yeAW947pMFkC/fdH3n2cTaOLCIAo0NQ5qOcd68M90ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H33wUqA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H33wUqA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1F9C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755827993;
	bh=UwleNSBIklAgIIko4z9PnEg4tmx4DQXWftOMbeSkijI=;
	h=To:Subject:From:Date:From;
	b=H33wUqA7CE/eFAQwC1BGpnk4JslqQ3dxfwBmhN48PaQMwySvtXnLejyjhPGxZEzQo
	 4E6E87JiypHnW6mrfX09MyVmoF/+1OhvAdRik2lKP3wnLtrRE66oH8ztupEKFvf1Md
	 grpm36usdUX5CVu/qdwWGikD18MH7LbAN4+/RPhevJ8GsD8mZAitHBflgXarrMS0yK
	 mf0UvjkvoeImQTpkmUtgQeJzC1eaiqGztUSTQJN+163QWsls28zDtro7VWXDyEdfNr
	 OSuB5JrMdTn2uoku5ZSwqVDS9USodHZXC0jgkryNkfKHAw/wcSX71qDJEll7N54u4y
	 8ON1MdKvaHHhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA86CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582799357.1964.7484526852420126229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe01a4b1cb0a58740907bce4508df1b3c59ed8541ea927b6ed257bcd8b5a19a
Date: Fri, 22 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755827993
