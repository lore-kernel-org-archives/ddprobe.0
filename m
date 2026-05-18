Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C43909A2
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779141034; cv=none; b=POeH14boqG/eArOXce8hwJPdOqaUhL9hqI+1TV8ANdbB290QMGUEB+sl9kj32blWxdgfhUVtTuKthFs2JJtgBYATDEAKX0KfaT4NmArhfNsThJw9I4VMLDNt0FWpwpeqshbBUuF5s/Sib7sIPQ00CvReglo4ENhcTSSE0EFiNUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779141034; c=relaxed/simple;
	bh=t9PBFicS3kV7cRmq21l37bBSq5QA3rrn6aOM8SOsTvk=;
	h=To:Subject:From:Message-Id:Date; b=mTmn7qMPkpwqAgXFv86vC0jGoY4am4vQ+qWSxyNN+xVH4n7DKLV2OakU+T5cXcKd3jfCv+HkGUEZ7mHD9qzXIhL/O5U/6eqRExJPgMxHfwCuDZWezFkhKNWbOj1ulNb5kBkerRa/0PUGYRpm0vmunK8apDKbBCn4GNgCRlQirTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBsKus65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBsKus65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE0DC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779141033;
	bh=t9PBFicS3kV7cRmq21l37bBSq5QA3rrn6aOM8SOsTvk=;
	h=To:Subject:From:Date:From;
	b=DBsKus65SSPo3cD3b88Ydu60jjuL4rjhf7wC5+OfP5mlaSz+xis99MEZqI3KMzeXl
	 oFxOuYRGeBv8dDNNM1mYEZkroM03c/USkiqz0eZ656QH3lZedgQ97zgLgnnw4kiQby
	 Ki9OzbKxyUWwJFSFB8ro//aL0sYFBGVibqIMvgWLq4PO04LG7DdDlkhSDtxoz26Znr
	 mK4ri0ppmY6herF0h3lyB68EWy9CIOGzQ3L8LvdKhTi7p29aFAvduQ2ZGssczNE5zs
	 BwnHmqDUiCblGw0fY+NTGqK+DRYv8Bt7SB68m/sGiD4xyyp8YTD5/IiHOv8HyWUZrs
	 su2eAxbXzbf/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA951CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914103368.27114.620651400063067983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb427bcdcc021d96f707a659d75ccd7e2b70f358f620b125820ec001efb7bf20
Date: Mon, 18 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779141033
