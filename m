Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223DD5B1EB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775072734; cv=none; b=dkF/4D09MWKSzauhxUYjE5/sBG4RchWL5SNCWqGB5tN/uD7GA1Mh4+herCwE+b/sSaWKy6Xw2GAj0+copmyl49uEoSD52fTXLK9oM+s8+N6pZqg4MJJteSuShQSgAcGK2obXs4vhTqQsSsCKj7gqIGJ3jwkNhs3jlIz2pAd4X8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775072734; c=relaxed/simple;
	bh=aslpwIsZzoZgXLADFTXwdlbWCYyubWhfGhrIfclUc2A=;
	h=To:Subject:From:Message-Id:Date; b=iRqKOqqmr7Eq4AV9aPUOz3cAwIjPe++2yqvWx+jUQOVhXKUOxubOrAxqZyEE/mUYR66KIf0Xe5inxC9OZGnrtL9nAUPev0MpF8g5deZwDDw5dNYRM6tWOLK+dR5rV7fiqTujm7P4K8SFDzGvuTKjku9prmSbzPQVr1knVIuXZp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhCxzCF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhCxzCF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5F0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775072733;
	bh=aslpwIsZzoZgXLADFTXwdlbWCYyubWhfGhrIfclUc2A=;
	h=To:Subject:From:Date:From;
	b=NhCxzCF5CPjn2tIY4jvLGHbBpXTifJ6EV89GH4HiM7ZGRmrXGTFkTOnpYZeiNMU80
	 Tdxtu/tN1nbvNnWkk2TMYXF0r3WyxNAEsZe51L57BQHh11KjBtrpc94tJBLagjYkpK
	 ZlAf2hUXa0sq3muX2apjsVuAw5YmYIrnk5RX2twhr+ZjS59EqzAeFFkWvKHttMcQo3
	 u5TeYlbkNH7KCVmWdMtw7np+LdFPVevPn5AS6gS6dWWcQp6DqEHQfwNw+UvZR2FzTW
	 +5vyYp413aRZhrD9wioR4xjTn5i4e3pYn7qBNqNf0Me3qp/a5GLZzXu/03oMWat7RA
	 AzU4RFdp4GF3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62D107639C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507273368.26465.12477219700740220633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b216d6f9aa74541864a1601521f384cacc1d37b71b7e246c2e5ab9035c1ddfb
Date: Wed, 01 Apr 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775072733
