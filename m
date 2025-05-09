Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38879290BCA
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746793795; cv=none; b=ZsxkckVu3Q0y7cFKb8pG2GawRvyCjZ5NMdn0LvAFHSjYb6Z887W9KoyospsxMzNSP98cb4M1lDTHHqtdHi0fFMvXAUSbA/Hm11lLyQcRlIvN3+JaiInRVW3ARypsCcCp0gAGw1OjViRCmdU5WJDNPLdkks3/6f4Yu0/umOU9TVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746793795; c=relaxed/simple;
	bh=WLxl+CAJ/K6XLSe6gsiQyjpS86gOqNUMv26CO9ULjWg=;
	h=To:Subject:From:Message-Id:Date; b=mjwmDCL4EiMb3mvaggrooQdLt6GxWbFnp7FM4d3/6esZTsRe76UimOYkzuxk5iCAauNrt7Xj32OvlzFUkEu1tBJeEhpc5b2GqJKn/xs0orbyPRnoJdfpJeEvZYwll7L2lZQj+/kbmkm8qH+FfU9goA+5kkHe/ROI3+t/DPqmqUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVOzIyyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVOzIyyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE5BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746793793;
	bh=WLxl+CAJ/K6XLSe6gsiQyjpS86gOqNUMv26CO9ULjWg=;
	h=To:Subject:From:Date:From;
	b=rVOzIyyqsmkt2pU32iUJnqrsr0weHCSNlOzRXlg12VBjwWa4FPt8gZpZ1AILAVuPR
	 nxAXtUriKp2u4wcbu7nEuJo+uDPgSRyiZxWO59WGpUpagU6rArdrHBK7OBZ71t2zUq
	 akrBn6OLjxDE0X7dGTVicjQ4EftdNg2tooDdC+QYo9Y1BrsvPiqBZMPfRNnccZER2y
	 Ugq29je8NH+o7TWhKJoegDqwnApvmPY0yQwzUQofPm10Ob/RjXTvrmfEz0h9W73djG
	 HxDvIVoBpfO9X5qGpM+Q8nd87wx9RDxqGZG7eha76d2I3dvhpw0jkLkJFM3dLK0lIK
	 q0irQD6JaxMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E803C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679379357.12578.9315816489849781882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb599b322027025a02add700e1395443aa0e9a1ef7e7a2b83a7425d01eafa39
Date: Fri, 09 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746793793
