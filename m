Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF1E1862
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746478794; cv=none; b=OI+mSN/i6GCMus0QoM5Fh/KlVc0WzkOIcXv8SlHyfwLkDskuigDXsZyW8Si2jJfCYaK31HUUHVZNVYzyFws8zP15iXgIhK6YO3P/Yv6+Tk+Y4RwFv5o7S6VTfL2f7uV2W+DBa12KapnQtwU9gYC0RzMYRh6Q2QXwI44vfcaMcPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746478794; c=relaxed/simple;
	bh=txKcHI/yosffaSt1n57/H3tw5WgIx3utttm0lvfKyuQ=;
	h=To:Subject:From:Message-Id:Date; b=cD/X/TMlFISPXVle54uV+B8cMaVjz4iflQHBgKYhxijS39rTLGMwT0fZjEPG63duke8hjSdTtaboTaybhMLNkbDNF7rcS9V0jy9luVIkuIHDC5GjpmRHO+BR9ScTkz6NJQf1eNDe9bAu+midemlO2xuIaB6nkPURxrR/96VCQ2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsmLZKPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsmLZKPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1FDC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746478793;
	bh=txKcHI/yosffaSt1n57/H3tw5WgIx3utttm0lvfKyuQ=;
	h=To:Subject:From:Date:From;
	b=RsmLZKPEXjSu+haVg1TwUVYy6tobdSKXV8NUT9U9OmMUWSPxwQmimlP5iTjq8npJW
	 l/eFC942O8XDO/HH9UxSvDe8H2tXmJ50OVjnwhgWLVFHFetG5rd1gCxTYeVCkv/oxH
	 0gt5dK3+O7JIJQ87L+9fLzk0NIVjNFtrE5GRjs/tjZYWH1BKdx9ACy7KToq5x6Y4qQ
	 TyxUm06ldMQNCwGWdxT8cEAvl0DMgvBtXxOOGZrQD1/IW3fCprz2l67rVnRlefMdQR
	 kEJYg5MBmEKh6cn8NJzhhAAIHdwBc9/ZnbMD6qRGOXJxOBy+ndqzg3X9rE9Pn4BUG3
	 WGlkskCU1IkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5CDC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647879357.20911.422754813498288699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a935a166f04f8c0858e850bbe0d6cea5cfd1dceb9831168ace086d16682466d
Date: Mon, 05 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746478793
