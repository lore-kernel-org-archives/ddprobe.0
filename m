Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C1D1EFF9B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757986795; cv=none; b=F6c3uAy+F1kylF8eIB9uDAmu5rXzmojM5IK6OOG1DHlvAb4PteOYTjXy9t+04oy63bVw68C4pZtB/WZM2+o4pAKMcJMr2E9Cl3XfhgW11YeV4mKevgy9MciD9CpdbX4ENKOz/RE7xzjs9cPSfjKLnBJvVdTDPklO43A5jVdk4jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757986795; c=relaxed/simple;
	bh=kL58PylLk9DlH0WGg8cJAU+2sP7LldNB9TxckqTD79M=;
	h=To:Subject:From:Message-Id:Date; b=d+esAhhB88+VnIgdhWeTRNZfGGK4HOVhX7VkOjJDXEuI4jAMsWy3fIVRo9lMgeDLvF0k8ZOC3dtbCIeRJ7tcN7Nh8rt+e+6xd0Uj6eEZwSkaH8TjDDaWARwAvqMqslzDqe3rYLkNltLTUp6MLfv64T1WSqeQpmZj+9rf8fiiEe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvH5Xtca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvH5Xtca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C496C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757986793;
	bh=kL58PylLk9DlH0WGg8cJAU+2sP7LldNB9TxckqTD79M=;
	h=To:Subject:From:Date:From;
	b=TvH5XtcaVvHTHoUmBI4yEqjKjCVRIr8h85pbzKxrjzYxvEm4YrOJIkg4Dlt4RTb9O
	 Ho6A2N8gntVuJsMcxQSq5WZ4noVJiGD4BVYVtjPAP+SSpnc3wTBemQmqZpB6vZ+GTk
	 YF8BSHn4Mu8V/0Cfe/+0IaWXug62UkU7kngVTMddqDe4RDHQNfLOeLRROsWdCAYTtv
	 gkeP1jz+1NMQIWfqw4AsTibGImywxOuH0uK169ciKj1VQfMvEi6OnpVSogjalwPWYR
	 EaEHNFsCbziiRlSfarg4H3dFkXt+/p6GMDStjxMPgvN+lh0QYcgxTuC3+6s9POwlfN
	 pe9SdxnPqRqUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82DCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798679357.26611.14960138817656867994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3225685188bf8b0df8f4e6e6fa440b747fe518d5efede2d1d852eef0c5a770
Date: Tue, 16 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757986793
