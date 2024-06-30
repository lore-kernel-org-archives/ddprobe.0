Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC9E40C03
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719788063; cv=none; b=VT3jSaY3Iq8lHlIvVVfFSdopoZWltuyGtKRqVWZq9GDnhYC9T6CtZg+y1H546Dp61V/FCDqkzf7UN1gBKyNZESpu6VhIqa5yh0vc+As9b9p9fgAmlaN+f7/RuKy7S9cn7YZfIAOBUhEjwIIJknik1RYDK3aem6mGs7HwB9boZJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719788063; c=relaxed/simple;
	bh=+05wuMYlkPpTLk9zFgZncx7uaAmZ7RHbaKx3t1HcPco=;
	h=To:Subject:From:Message-Id:Date; b=QQPtMYKbEg5ETIK5+cYSoy0UFQ8cQKAZ5N6kfm3JQD4Olq8S5J6+TfugnvMPzBboiW0UwreV1ek8zQDA7LM76jm9zqbK13QqCX1raYvUlWkzj70pwigmdlORqmlP4Nl8Kca7kZYYGAxpQp4yj+c2aeQM8N/GgGrghaXoew1K4uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt/3AMGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt/3AMGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE637C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719788062;
	bh=+05wuMYlkPpTLk9zFgZncx7uaAmZ7RHbaKx3t1HcPco=;
	h=To:Subject:From:Date:From;
	b=bt/3AMGzBStTbYMbdJrufoLvZqKikmHCP92NfEJADBCbtmYuO6z2ARbCrfKAOpVg1
	 yHAeGFyjr6tWtb2/IuC70YXQXDoAGn1aY/0mx/IyUPry0lZBfggSWnFGLojMFR4ag4
	 rHamKlQO+4fIDjIGqdQyveWHsSMVX/Ho+f6+qBNk5sxCr8mghANd20/wFH8sosmwKh
	 +Pj2u2u1BM2D44EkkeF7k69Z4Sq9i35lU88c8xkGXT4poww3eF5EO9ZSyrgnMsqT7m
	 l2NWXm661tJgnAR1b9bx81KticnZKwp90beSnOFi8qg8tPDF3j2b9rs8YCEJVKp+jB
	 5ajoOKU5+yWTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87E2C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978806278.22348.4610698818682184888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277c0de8480d47727341a421ce9e67cfdc60cab3f155d1848e2c8ebbe0a46b08
Date: Sun, 30 Jun 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719788062
