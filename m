Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23212248896
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776649654; cv=none; b=jntRzaeHnjuXB9D35vl0QQCOzLSWS8S8ozKfB8/+m+2iWvSJncnVIwANxqw6VZqXl/U1RHp9J7MFnDssYmp6TZQBJp94RPNaBKsG3RshXPZM10Tu8VpCsSK9V3WE0UoomqYSijegCYxp5KimvRmLDqA59eAr5+TBHn+dXjWgL7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776649654; c=relaxed/simple;
	bh=+JdHGPYHiqH2Yw9xC9Oc5UtR4U3qcK53I9xXdUfyflg=;
	h=To:Subject:From:Message-Id:Date; b=PWohSYPpk4958iY9lvFnqWLBWXO6YIo5S2shJsezHDAdNUD+4HZLcftOeS8yfsLQPx6oxgIRciV25nIXbpsYxjGEOS9VgtwaaplDXqoDullkpoNBV/azwWLvarthWAOWoV0OsYdM6cPBZYknisXzDGV8e6m+7K0iKLFHnaeyE58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4nq5DdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4nq5DdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD969C2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776649653;
	bh=+JdHGPYHiqH2Yw9xC9Oc5UtR4U3qcK53I9xXdUfyflg=;
	h=To:Subject:From:Date:From;
	b=X4nq5DdY8AvxWAga2Eb1JFmLw9r2NhvttdN2HRglJ2omEwH9X83fYxOjRDrZRNcZO
	 VSP0bkaMBf+h5PKQaxV69DkIwssxz6q4arTa6yUc7MBC9l1WKsIIQy7LRowU78ya1X
	 0Kdld9z5H48olOqaX21keR5UT5CWDT9aSCrWbrD54HTM4rhIVTKxwv13pBOBuD5kmk
	 QJhfk0gzAp7Ccw9SNshHYFtGLGJk+28UldzGtBnqm0mLfbgai/XJVuAg4RUGGz3ysI
	 ekIOAYOuQK5SDr+FlmyfsiIxbwFLjmuWuW0ak8SbdBJXoP5DqXOgQCS0aSCzKt2hso
	 92LU655jnzblQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D4EA71B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664965369.10394.893077386113403079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0324c871944d9e9b05a51fc5b4eb3551d569cc98d4374afac233e6e64f69e9
Date: Mon, 20 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776649653
