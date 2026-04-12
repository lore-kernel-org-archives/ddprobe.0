Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2273E27470
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775990254; cv=none; b=BlSHebSpaGkwPUBVp478h/zaOuZClvELJGl4gY/1C2rkfXLVtY3idsMPtUqcGnWF8yWFjM5vD/v8luDeQn6TftaVEAYq1ZrFhi40stGZ6AjE09kikmmlgPBwAWUk3i4RMkcT8QNiNGX/C2AbMPkaSi73gHiFVBypcImjSpVfH6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775990254; c=relaxed/simple;
	bh=uCmLoj0r+rVID2LS4R0/S58hdSaaQ3OBEZeoobnCm0A=;
	h=To:Subject:From:Message-Id:Date; b=ihD1cgK43DL6dCUDkO3pl023zX8kvY5TSQ8Uk7OkLo/u+Z4eMJyBBDi3gffdMlnrnMdTfYR0HedL9fe2+AMMtt8ZzV28/eFtHjBz0qB6UYs97PRgGjY6Gx6YNobp5FzqiIMsKbyDDcMsSYct6qcm7hnbIr4YlLtmWIbNYeKI/nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHcvqUAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHcvqUAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07CCC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775990253;
	bh=uCmLoj0r+rVID2LS4R0/S58hdSaaQ3OBEZeoobnCm0A=;
	h=To:Subject:From:Date:From;
	b=QHcvqUAn3VYqwXgNyzBN9ccdguMfazaBeLsRgYO3IM191efNlD9VtukounRsjkiFJ
	 6Pcaw4Y2X09gvRyg2UDK0tHUSdd6fVe1/HAqegt5J2K2O0IYaXUtjr/5/ri2NGaO/A
	 kwHTRXjq9AXbP/yLSBd3wFYYlxs3Ty6EFqihgXKXr0a4fILxnqCNxDd/BKjSwgHcD/
	 K9EqtFPsrUFTyJn3OoElJcrGHT1snK0OJE67WP4b4oUI+Lg2IRPxI74Z7TD9fnsH03
	 q4pHS1Ez92qghM6RwiYcxMAHwdrNnJGjbnmWY/gPg2c20Pou7ocRVpgWXu6W0yQAsT
	 2Lqc0YoviBtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC439E64009
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599025368.27446.13730388640863860407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fce9b6c1b76e13fad693cdebc75eabcf301eda22ec0d1b9982aa3a237c48d5c
Date: Sun, 12 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775990253
