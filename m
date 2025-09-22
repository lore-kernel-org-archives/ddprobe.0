Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE5E2F3627
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758525593; cv=none; b=OxWWRPPrH0afWkx7cqFs16qiaiaVKdm3mruPAgNs5P7+7VjByr8p3x7Ye+bMNVzIz1nw7zgBpLD1WzerhE1iQaFi+r7X7D6chc5XI2vs5FG9Ef9z4VMY7KezghWXWwi9PqpwFYP1cGKwXZmlxcvhEzzvbtqNc+V28yQ9ZuQvdPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758525593; c=relaxed/simple;
	bh=4tQw8n62rxhcaAg/BrBZxbaxUxbr7xYiOI5ZYF8jk+k=;
	h=To:Subject:From:Message-Id:Date; b=Rebhv5oBLEV6EWVDIluwVqMpa0R0khcRNf6HOMU8q8a0xtI8Po1AV/JwrjTKqDMYAhxVZsMnyqImW8n9+fixsPwjshuY4FvqQc8I0rqiloLn+uoAGVkyr7jbC1IcpWzP6g8BZipkWVzPBhvO5+lVBEwWyCxy5VHG9XC4CX15ty8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdGE3PDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdGE3PDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C6EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758525593;
	bh=4tQw8n62rxhcaAg/BrBZxbaxUxbr7xYiOI5ZYF8jk+k=;
	h=To:Subject:From:Date:From;
	b=pdGE3PDDgOUMSvUghKVBqC9IAgKeK/eaZFz223LtY/2mAHK0U2hpQor4FFwOSrYTr
	 xs6x8Ogu79S+XHLuK0d8q9qIG5KyH+WbQxqHvLekVcJ7HdWAvNENGdj/Lw9ZLUJJgX
	 +RXflp0gF+c72JrVL64MFeNWOe6bEp259zryjRBz86KrzsoExcEtoAYgd4sG1liBa0
	 86lFYF0jkqtfmnj1IBmHG0lZKTLQi2iDfyr5CaDIk1dmrR+Vbe/5dx10LTglkq4B8n
	 EIq+Or8a28Fm82LbBpuEkwrIoi31gBQwxdOUchfrPP5QVqUDWZeT5eGsCihPmBGHWe
	 zrNA+IxxalR8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926EFCAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852559357.27608.12492642629564762008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa31aba6c0389e89eb32a6862c0d97e1b58672f30131a295e2f17f7faae40ca
Date: Mon, 22 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758525593
